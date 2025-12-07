/**
 * Type Mapping and Code Generation Utilities
 *
 * This module handles:
 * 1. Name conversion (snake_case, PascalCase, camelCase)
 * 2. MoonBit keyword escaping
 * 3. FFI name generation
 * 4. Web IDL to MoonBit type mapping
 * 5. Code emission utilities
 */

import {
  type ParsedType,
  type ParsedIdl,
  unwrapNullableType,
} from "./parser.js";
import { toVariantName } from "./emitter/enum.js";

// =============================================================================
// Name Conversion Utilities
// =============================================================================

/**
 * Convert camelCase or PascalCase to snake_case
 * Examples:
 *   addEventListener -> add_event_listener
 *   getElementById -> get_element_by_id
 *   XMLHttpRequest -> xml_http_request
 */
export function toSnakeCase(name: string): string {
  return name
    .replace(/([A-Z]+)([A-Z][a-z])/g, "$1_$2")
    .replace(/([a-z\d])([A-Z])/g, "$1_$2")
    .replace(/-/g, "_")
    .toLowerCase();
}

// =============================================================================
// MoonBit Keyword Escaping
// =============================================================================

/**
 * MoonBit reserved keywords that need escaping
 */
const MOONBIT_KEYWORDS = new Set([
  "type",
  "struct",
  "enum",
  "trait",
  "impl",
  "fn",
  "let",
  "mut",
  "pub",
  "priv",
  "if",
  "else",
  "match",
  "while",
  "for",
  "break",
  "continue",
  "return",
  "true",
  "false",
  "self",
  "Self",
  "as",
  "is",
  "in",
  "not",
  "and",
  "or",
  "test",
  "init",
  "main",
  "derive",
  "extern",
  "loop",
  "guard",
  "raise",
  "try",
  "catch",
  "throw",
  "namespace",
  "where",
  "method",
  "async",
  "defer",
]);

/**
 * Escape MoonBit keywords by appending underscore
 * Examples:
 *   type -> type_
 *   match -> match_
 */
export function escapeKeyword(name: string): string {
  if (MOONBIT_KEYWORDS.has(name)) {
    return `${name}_`;
  }
  return name;
}

// =============================================================================
// FFI Name Generation
// =============================================================================

/**
 * Generate trait name from interface name
 * EventTarget -> TEventTarget
 */
export function toTraitName(interfaceName: string): string {
  return "T" + interfaceName;
}

/**
 * Generate FFI module name from interface name
 * EventTarget -> webapi_EventTarget
 */
export function toFfiModuleName(interfaceName: string): string {
  return "webapi_" + interfaceName;
}

/**
 * Generate method FFI function name
 * Example: Element + getAttribute -> element_get_attribute_ffi
 */
export function generateMethodFfiName(
  typeName: string,
  methodName: string,
): string {
  return `${toSnakeCase(typeName)}_${toSnakeCase(methodName)}_ffi`;
}

/**
 * Generate property getter FFI function name
 * Example: Element + tagName -> element_tag_name_ffi
 */
export function generatePropertyGetterFfiName(
  typeName: string,
  propertyName: string,
): string {
  return `${toSnakeCase(typeName)}_${toSnakeCase(propertyName)}_ffi`;
}

/**
 * Generate property setter FFI function name
 * Example: Element + innerHTML -> element_set_inner_html_ffi
 */
export function generatePropertySetterFfiName(
  typeName: string,
  propertyName: string,
): string {
  return `${toSnakeCase(typeName)}_set_${toSnakeCase(propertyName)}_ffi`;
}

// =============================================================================
// Code Formatting Utilities
// =============================================================================

/**
 * Indent each line of a string by the given number of spaces
 */
export function indent(str: string, spaces: number = 2): string {
  const indentation = " ".repeat(spaces);
  return str
    .split("\n")
    .map((line) => (line.trim() ? indentation + line : line))
    .join("\n");
}

// =============================================================================
// FFI Safety Utilities
// =============================================================================

/**
 * Safe primitive types that can be used in FFI declarations
 */
const FFI_SAFE_PRIMITIVES = new Set([
  "Bool",
  "Int",
  "Int64",
  "UInt",
  "UInt64",
  "Double",
  "Float",
  "String",
  "Unit",
  "JsValue",
]);

/**
 * Check if a MoonBit type is safe to use in FFI declarations
 *
 * FFI declarations cannot use:
 * - Closure types (contain "->")
 * - Generic/array types (contain "[")
 * - Optional types (contain "?")
 * - Trait object types (start with "&")
 *
 * Safe types: primitives and JsValue
 */
export function isFfiSafeType(moonbitType: string): boolean {
  // Closure types are not FFI safe
  if (moonbitType.includes("->")) {
    return false;
  }

  // Arrays, generics, and optionals are not FFI-safe
  if (moonbitType.includes("[") || moonbitType.includes("?")) {
    return false;
  }

  // Trait object types are not FFI-safe
  if (moonbitType.startsWith("&")) {
    return false;
  }

  // Only allow known safe primitives
  return FFI_SAFE_PRIMITIVES.has(moonbitType);
}

// =============================================================================
// Code Emission Utilities
// =============================================================================

/**
 * Emit external type declaration
 * Example: #external pub type EventHandler
 */
export function emitExternalType(typeName: string): string {
  return `///|
#external
pub type ${typeName}`;
}

/**
 * Emit TJsValue implementation for a type
 * Example: pub impl TJsValue for EventHandler with to_js(self : EventHandler) -> JsValue = "%identity"
 */
export function emitTJsValueImpl(typeName: string): string {
  return `///|
pub impl TJsValue for ${typeName} with to_js(self : ${typeName}) -> JsValue = "%identity"`;
}

// =============================================================================
// Web IDL Type Mapping
// =============================================================================

/**
 * Map of Web IDL primitive types to MoonBit types
 */
const PRIMITIVE_TYPE_MAP: Record<string, string> = {
  // Boolean
  boolean: "Bool",

  // Integer types (WebIDL -> MoonBit)
  byte: "Int", // 8-bit signed → Int (no signed 8-bit in MoonBit)
  octet: "Byte", // 8-bit unsigned → Byte
  short: "Int", // 16-bit signed → Int (Int16 exists but Int is more common)
  "unsigned short": "UInt", // 16-bit unsigned → UInt (UInt16 exists but UInt is more common)
  long: "Int", // 32-bit signed → Int
  "unsigned long": "UInt", // 32-bit unsigned → UInt
  "long long": "Int64", // 64-bit signed → Int64
  "unsigned long long": "UInt64", // 64-bit unsigned → UInt64
  bigint: "Int64", // BigInt → Int64

  // Floating point types (WebIDL -> MoonBit)
  float: "Float", // 32-bit float → Float
  "unrestricted float": "Float", // 32-bit unrestricted float → Float
  double: "Double", // 64-bit float → Double
  "unrestricted double": "Double", // 64-bit unrestricted float → Double

  // String types
  DOMString: "String",
  USVString: "String",
  ByteString: "String",

  // Special types
  object: "JsValue",
  any: "JsValue",
  undefined: "Unit",
};

/**
 * Known interfaces that have been generated
 */
const KNOWN_INTERFACES = new Set([
  // Core DOM
  "EventTarget",
  "Event",
  "CustomEvent",
  "EventListener",
  "Node",
  "Document",
  "DocumentFragment",
  "DocumentType",
  "Element",
  "Attr",
  "CharacterData",
  "Text",
  "Comment",
  "CDATASection",
  "ProcessingInstruction",
  // HTML Elements
  "HTMLElement",
  "HTMLHtmlElement",
  "HTMLHeadElement",
  "HTMLBodyElement",
  "HTMLDivElement",
  "HTMLSpanElement",
  "HTMLParagraphElement",
  "HTMLAnchorElement",
  "HTMLButtonElement",
  "HTMLInputElement",
  "HTMLFormElement",
  "HTMLImageElement",
  "HTMLScriptElement",
  "HTMLStyleElement",
  "HTMLLinkElement",
  "HTMLCanvasElement",
  "HTMLVideoElement",
  "HTMLAudioElement",
  // Collections
  "NodeList",
  "HTMLCollection",
  "NamedNodeMap",
  "DOMTokenList",
  // Events
  "UIEvent",
  "MouseEvent",
  "KeyboardEvent",
  "FocusEvent",
  "InputEvent",
  "WheelEvent",
  // Canvas related
  "CanvasRenderingContext2D",
  "ImageBitmapRenderingContext",
  "OffscreenCanvasRenderingContext2D",
  "CanvasGradient",
  "CanvasPattern",
  "OffscreenCanvas",
  // Types needed for union types
  "ImageBitmap",
  "ImageData",
  "Blob",
  // Shadow DOM
  "ShadowRoot",
  "HTMLSlotElement",
  // Typed Arrays (JavaScript built-in types)
  "Float32Array",
  "Float64Array",
  "Int8Array",
  "Int16Array",
  "Int32Array",
  "Uint8Array",
  "Uint8ClampedArray",
  "Uint16Array",
  "Uint32Array",
  "BigInt64Array",
  "BigUint64Array",
  "ArrayBuffer",
  "DataView",
  // Other
  "Window",
  "Navigator",
  "Location",
  "History",
  "Storage",
  "AbortController",
  "AbortSignal",
  "Range",
  "MutationObserver",
  "MutationRecord",
]);

/**
 * Known dictionaries that have been generated
 */
const KNOWN_DICTIONARIES = new Set<string>();

/**
 * Known enums that have been generated
 */
const KNOWN_ENUMS = new Set<string>();

/**
 * Known typedefs (union types, etc.) that have been generated
 */
const KNOWN_TYPEDEFS = new Set([
  "RenderingContext",
  "CanvasImageSource",
  "ImageBitmapSource",
  "HTMLOrSVGImageElement",
]);

/**
 * Known union types generated from property types
 * Maps the union type name to its member types
 */
const KNOWN_UNION_TYPES = new Map<string, string[]>();

/**
 * Register dictionary names so they can be properly typed
 */
export function registerDictionaries(names: Iterable<string>): void {
  for (const name of names) {
    KNOWN_DICTIONARIES.add(name);
  }
}

/**
 * Register enum names so they can be properly typed
 */
export function registerEnums(names: Iterable<string>): void {
  for (const name of names) {
    KNOWN_ENUMS.add(name);
  }
}

/**
 * Check if a type name is a known dictionary
 */
function isKnownDictionary(name: string): boolean {
  return KNOWN_DICTIONARIES.has(name);
}

/**
 * Check if a type name is a known enum
 */
function isKnownEnum(name: string): boolean {
  return KNOWN_ENUMS.has(name);
}

/**
 * Check if a type name is a known typedef (union type)
 */
export function isKnownTypedef(name: string): boolean {
  return KNOWN_TYPEDEFS.has(name);
}

/**
 * Register a union type name so it can be properly typed
 */
export function registerUnionType(name: string, memberTypes: string[]): void {
  KNOWN_UNION_TYPES.set(name, memberTypes);
}

/**
 * Check if a type name is a known union type
 */
export function isKnownUnionType(name: string): boolean {
  return KNOWN_UNION_TYPES.has(name);
}

/**
 * Get union type member names
 */
export function getUnionTypeMembers(name: string): string[] | undefined {
  return KNOWN_UNION_TYPES.get(name);
}

/**
 * Check if a type name is a known generated interface
 */
function isKnownInterface(name: string): boolean {
  return KNOWN_INTERFACES.has(name);
}

/**
 * Track union types encountered during generation
 */
export interface UnionTypeContext {
  contextName: string;
  memberTypes: ParsedType[];
}

/**
 * Result of mapping an IDL type
 */
export interface MappedType {
  moonbitType: string;
  needsConversion: boolean;
  isOptional: boolean;
  unionContext?: UnionTypeContext;
  isDictionary?: boolean;
  isTypedefUnion?: boolean; // True if this is a typedef union (like CanvasImageSource)
  isInterface?: boolean; // True if this is a known interface type
}

/**
 * Map a parsed IDL type to MoonBit type
 */
export function mapIdlType(
  idlType: ParsedType,
  contextName?: string,
): MappedType {
  switch (idlType.type) {
    case "void":
      return { moonbitType: "Unit", needsConversion: false, isOptional: false };

    case "any":
      return {
        moonbitType: "JsValue",
        needsConversion: false,
        isOptional: false,
      };

    case "primitive": {
      const name = idlType.name;
      if (!name) {
        return {
          moonbitType: "JsValue",
          needsConversion: false,
          isOptional: false,
        };
      }
      if (name === "undefined") {
        return {
          moonbitType: "Unit",
          needsConversion: false,
          isOptional: false,
        };
      }
      const primitiveType = PRIMITIVE_TYPE_MAP[name] || "JsValue";
      return {
        moonbitType: primitiveType,
        needsConversion: primitiveType !== "JsValue",
        isOptional: false,
      };
    }

    case "reference": {
      const name = idlType.name;

      // Guard against undefined name
      if (!name) {
        return {
          moonbitType: "JsValue",
          needsConversion: false,
          isOptional: false,
        };
      }

      // Handle EventListener specially - it's a callback
      if (name === "EventListener") {
        return {
          moonbitType: "EventListener",
          needsConversion: true,
          isOptional: false,
        };
      }

      // Handle EventHandler and similar typedefs
      // Map to the typedef type directly (not the underlying callback)
      if (name === "EventHandler") {
        return {
          moonbitType: "EventHandler",
          needsConversion: true,
          isOptional: false,
        };
      }
      // Map OnErrorEventHandler and OnBeforeUnloadEventHandler to EventHandler
      // since their underlying types are excluded from generation
      if (
        name === "OnErrorEventHandler" ||
        name === "OnBeforeUnloadEventHandler"
      ) {
        return {
          moonbitType: "EventHandler",
          needsConversion: true,
          isOptional: false,
        };
      }
      if (name.endsWith("Callback") || name.endsWith("Handler")) {
        return {
          moonbitType: "JsValue",
          needsConversion: false,
          isOptional: false,
        };
      }

      // Handle DOMHighResTimeStamp (typedef for double)
      if (name === "DOMHighResTimeStamp" || name === "EpochTimeStamp") {
        return {
          moonbitType: "Double",
          needsConversion: true,
          isOptional: false,
        };
      }

      // Handle WindowProxy which is basically Window
      if (name === "WindowProxy") {
        return {
          moonbitType: "Window",
          needsConversion: true,
          isOptional: false,
        };
      }

      // Check if it's a known typedef (union types, etc.)
      // Return trait object since union typedefs don't have external types
      if (KNOWN_TYPEDEFS.has(name)) {
        return {
          moonbitType: `&T${name}`,
          needsConversion: true,
          isOptional: false,
          isTypedefUnion: true,
        };
      }

      // Check if it's a known dictionary
      if (isKnownDictionary(name)) {
        return {
          moonbitType: name,
          needsConversion: true,
          isOptional: false,
          isDictionary: true,
        };
      }

      // Check if it's a known enum
      if (isKnownEnum(name)) {
        return {
          moonbitType: name,
          needsConversion: true,
          isOptional: false,
        };
      }

      // For unknown types, use JsValue as fallback
      if (!isKnownInterface(name)) {
        return {
          moonbitType: "JsValue",
          needsConversion: false,
          isOptional: false,
        };
      }

      // Reference to a known interface (abstract, concrete or [HTMLConstructor] only)
      // Abstract interfaces now use external types just like concrete ones
      return {
        moonbitType: name,
        needsConversion: true,
        isOptional: false,
        isInterface: true,
      };
    }

    case "sequence": {
      const elemMapped = mapIdlType(idlType.elementType!);
      return {
        moonbitType: `Array[${elemMapped.moonbitType}]`,
        needsConversion: true,
        isOptional: false,
      };
    }

    case "promise": {
      const promiseMapped = mapIdlType(idlType.elementType!);
      return {
        moonbitType: `JsPromise[${promiseMapped.moonbitType}]`,
        needsConversion: false,
        isOptional: false,
      };
    }

    case "nullable": {
      const nullableMapped = mapIdlType(idlType.elementType!, contextName);
      return {
        moonbitType: nullableMapped.moonbitType,
        needsConversion: nullableMapped.needsConversion,
        isOptional: true,
        unionContext: nullableMapped.unionContext,
        isDictionary: nullableMapped.isDictionary,
        isTypedefUnion: nullableMapped.isTypedefUnion,
        isInterface: nullableMapped.isInterface,
      };
    }

    case "union": {
      // If contextName is provided and is a known union type, use it
      if (contextName && isKnownUnionType(contextName)) {
        return {
          moonbitType: contextName,
          needsConversion: true,
          isOptional: false,
        };
      }
      // For unknown unions, use JsValue as fallback
      return {
        moonbitType: "JsValue",
        needsConversion: false,
        isOptional: false,
      };
    }

    case "frozen-array": {
      const frozenMapped = mapIdlType(idlType.elementType!);
      return {
        moonbitType: `Array[${frozenMapped.moonbitType}]`,
        needsConversion: true,
        isOptional: false,
      };
    }

    case "record":
      return {
        moonbitType: "JsValue",
        needsConversion: false,
        isOptional: false,
      };

    default:
      return {
        moonbitType: "JsValue",
        needsConversion: false,
        isOptional: false,
      };
  }
}

/**
 * Result of mapping a method parameter type
 */
export interface MappedParamType {
  /** The MoonBit type string for use in signatures */
  paramType: string;
  /** The underlying mapped type info */
  mapped: MappedType;
  /** Whether this is a union argument with a generated trait */
  isUnionArg: boolean;
  /** The trait name if this is a union argument */
  unionTraitName?: string;
  /** Whether the union collapsed to a single type */
  isCollapsedUnion: boolean;
}

/**
 * Generate union argument trait name
 * e.g., addEventListener + options -> TAddEventListenerOptionsArg
 */
export function getUnionArgTraitName(
  methodName: string,
  paramName: string,
): string {
  const methodCapitalized =
    methodName.charAt(0).toUpperCase() + methodName.slice(1);
  const paramCapitalized =
    paramName.charAt(0).toUpperCase() + paramName.slice(1);
  return `T${methodCapitalized}${paramCapitalized}Arg`;
}

/**
 * Single source of truth for mapping method parameter types.
 * This handles all the logic for determining the correct MoonBit type
 * for a method parameter, including:
 * - Typedef unions (e.g., CanvasImageSource -> &TCanvasImageSource)
 * - Interface types (e.g., Node -> &TNode)
 * - Inline union types (e.g., (boolean or AddEventListenerOptions) -> &TAddEventListenerOptionsArg)
 * - Collapsed unions (single remaining type after filtering)
 * - Regular types
 *
 * @param paramType The parsed IDL type of the parameter
 * @param methodName The method name (used for generating union trait names)
 * @param paramName The parameter name (used for generating union trait names)
 */
export function mapMethodParamType(
  paramType: ParsedType,
  methodName: string,
  paramName: string,
): MappedParamType {
  const mapped = mapIdlType(paramType);

  // Check if this is a union type (possibly wrapped in nullable)
  const typeToCheck = unwrapNullableType(paramType);

  let resultType: string;
  let isUnionArg = false;
  let unionTraitName: string | undefined;
  let isCollapsedUnion = false;

  if (mapped.isTypedefUnion) {
    // mapIdlType already returns trait object type for typedef unions (e.g., &TCanvasImageSource)
    resultType = mapped.moonbitType;
  } else if (mapped.isInterface) {
    // Use trait object type for interface arguments (e.g., &TNode)
    resultType = `&T${mapped.moonbitType}`;
  } else if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
    // Check if union collapses to single type after filtering
    const collapsedType = getCollapsedUnionType(typeToCheck);
    if (collapsedType) {
      // Use the single remaining type directly
      resultType = collapsedType;
      isCollapsedUnion = true;
    } else {
      // Use trait object type for union arguments
      unionTraitName = getUnionArgTraitName(methodName, paramName);
      resultType = `&${unionTraitName}`;
      isUnionArg = true;
    }
  } else {
    resultType = mapped.moonbitType;
  }

  return {
    paramType: resultType,
    mapped,
    isUnionArg,
    unionTraitName,
    isCollapsedUnion,
  };
}

/**
 * Get the default value expression for an optional parameter
 * @param defaultValue The default value string from IDL (e.g., "nonzero", "true", "{}")
 * @param idlType The parsed IDL type
 * @param idl Optional ParsedIdl for looking up enum definitions
 */
export function getDefaultValueExpr(
  defaultValue: string | undefined,
  idlType: ParsedType,
  idl?: ParsedIdl,
): string | undefined {
  if (!defaultValue) return undefined;

  const mapped = mapIdlType(idlType);

  // If the MoonBit type is JsValue, we can't use typed defaults
  // since we can't assign String/Bool/etc to JsValue directly
  if (mapped.moonbitType === "JsValue") {
    return undefined;
  }

  switch (defaultValue) {
    case "null":
      return "JsValue::null()";
    case "true":
      return "true";
    case "false":
      return "false";
    case "[]":
      return "[]";
    case "{}":
      // For dictionary types, use ::empty() constructor
      return `${mapped.moonbitType}::empty()`;
    default:
      if (defaultValue.startsWith('"')) {
        // Check if this is an enum type with a string default
        if (idl && idlType.name) {
          const enumDef = idl.enums.get(idlType.name);
          if (enumDef) {
            // It's an enum - convert string default to variant constructor
            const strValue = defaultValue.slice(1, -1); // Remove quotes
            const variantName = toVariantName(strValue);
            return `${idlType.name}::${variantName}`;
          }
        }
        // String default - only use if type is String
        if (mapped.moonbitType === "String") {
          return defaultValue;
        }
        return undefined;
      }
      if (!isNaN(Number(defaultValue))) {
        return defaultValue;
      }
      return undefined;
  }
}

/**
 * Format a MoonBit parameter declaration
 */
export function formatParam(
  name: string,
  type: ParsedType,
  optional: boolean,
  defaultValue?: string,
): string {
  const mapped = mapIdlType(type);
  const safeName = escapeKeyword(toSnakeCase(name));

  const typeStr = mapped.moonbitType;

  if (optional || mapped.isOptional) {
    if (defaultValue) {
      const defaultExpr = getDefaultValueExpr(defaultValue, type);
      if (defaultExpr) {
        return `${safeName}? : ${typeStr} = ${defaultExpr}`;
      }
    }
    return `${safeName}? : ${typeStr}`;
  }

  return `${safeName} : ${typeStr}`;
}

/**
 * Format a MoonBit return type
 */
export function formatReturnType(type: ParsedType): string {
  const mapped = mapIdlType(type);

  if (mapped.moonbitType === "Unit") {
    return "Unit";
  }

  if (mapped.isOptional) {
    return `${mapped.moonbitType}?`;
  }

  return mapped.moonbitType;
}

/**
 * Format return value conversion from FFI call.
 * Single source of truth for converting JsValue returns to proper MoonBit types.
 *
 * @param ffiCall The FFI function call expression
 * @param mapped The mapped type info for the return type
 * @returns MoonBit expression with proper type conversion
 */
export function formatReturnConversion(
  ffiCall: string,
  mapped: MappedType,
): string {
  if (mapped.moonbitType === "Unit") {
    return ffiCall;
  }

  if (mapped.isOptional) {
    // Use as_option for nullable returns
    return `${ffiCall}.as_option()`;
  }

  if (isKnownEnum(mapped.moonbitType)) {
    // Use from() for enum types - cast JsValue to String and call from()
    return `${mapped.moonbitType}::from(${ffiCall}.unsafe_cast()).unwrap()`;
  }

  // Use unsafe_cast for type conversion (all non-Unit FFI returns are JsValue)
  return `${ffiCall}.unsafe_cast()`;
}

// =============================================================================
// Union Type Utilities
// =============================================================================

/**
 * Types that should be skipped in union trait implementations
 * These are types that are not commonly used or not defined in our bindings
 */
export const SKIP_UNION_TYPES = new Set([
  "TrustedType",
  "TrustedHTML",
  "TrustedScript",
  "TrustedScriptURL",
]);

/**
 * Get the MoonBit type representation of a union member
 */
export function getUnionMemberMoonbitType(memberType: ParsedType): string {
  const type = unwrapNullableType(memberType);
  const mapped = mapIdlType(type);
  return mapped.moonbitType;
}

/**
 * Filter union members, removing duplicates, Unit, and skipped types
 * @param unionType The union type to filter
 * @param skipTypes Optional set of type names to skip (defaults to SKIP_UNION_TYPES)
 */
export function getFilteredUnionMembers(
  unionType: ParsedType,
  skipTypes: Set<string> = SKIP_UNION_TYPES,
): ParsedType[] {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return [unionType];
  }

  const seen = new Set<string>();
  const members: ParsedType[] = [];

  for (const member of unionType.memberTypes) {
    const moonbitType = getUnionMemberMoonbitType(member);
    if (
      moonbitType !== "Unit" &&
      !skipTypes.has(moonbitType) &&
      !seen.has(moonbitType)
    ) {
      seen.add(moonbitType);
      members.push(member);
    }
  }

  return members;
}

/**
 * Get the collapsed union type string if it can be simplified
 * Returns undefined if union cannot be collapsed
 */
export function getCollapsedUnionType(
  unionType: ParsedType,
): string | undefined {
  const members = getFilteredUnionMembers(unionType);

  if (members.length === 1) {
    return getUnionMemberMoonbitType(members[0]);
  }

  return undefined;
}
