/**
 * Type Mapping
 * 
 * Maps Web IDL types to MoonBit types and provides conversion expressions.
 */

import type { ParsedType } from "./types.js";
import { escapeKeyword, toSnakeCase } from "./utils.js";

/**
 * Map of Web IDL primitive types to MoonBit types
 */
const PRIMITIVE_TYPE_MAP: Record<string, string> = {
  // Boolean
  boolean: "Bool",

  // Integer types (WebIDL -> MoonBit)
  byte: "Int",              // 8-bit signed → Int (no signed 8-bit in MoonBit)
  octet: "Byte",            // 8-bit unsigned → Byte
  short: "Int",             // 16-bit signed → Int (Int16 exists but Int is more common)
  "unsigned short": "UInt", // 16-bit unsigned → UInt (UInt16 exists but UInt is more common)
  long: "Int",              // 32-bit signed → Int
  "unsigned long": "UInt",  // 32-bit unsigned → UInt
  "long long": "Int64",     // 64-bit signed → Int64
  "unsigned long long": "UInt64", // 64-bit unsigned → UInt64
  bigint: "Int64",          // BigInt → Int64

  // Floating point types (WebIDL -> MoonBit)
  float: "Float",           // 32-bit float → Float
  "unrestricted float": "Float", // 32-bit unrestricted float → Float
  double: "Double",         // 64-bit float → Double
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
  "EventTarget", "Event", "CustomEvent", "EventListener",
  "Node", "Document", "DocumentFragment", "DocumentType", "Element",
  "Attr", "CharacterData", "Text", "Comment", "CDATASection", "ProcessingInstruction",
  // HTML Elements
  "HTMLElement", "HTMLHtmlElement", "HTMLHeadElement", "HTMLBodyElement",
  "HTMLDivElement", "HTMLSpanElement", "HTMLParagraphElement", "HTMLAnchorElement",
  "HTMLButtonElement", "HTMLInputElement", "HTMLFormElement", "HTMLImageElement",
  "HTMLScriptElement", "HTMLStyleElement", "HTMLLinkElement", "HTMLCanvasElement",
  "HTMLVideoElement", "HTMLAudioElement",
  // Collections
  "NodeList", "HTMLCollection", "NamedNodeMap", "DOMTokenList",
  // Events
  "UIEvent", "MouseEvent", "KeyboardEvent", "FocusEvent", "InputEvent", "WheelEvent",
  // Canvas related
  "CanvasRenderingContext2D", "ImageBitmapRenderingContext", "OffscreenCanvasRenderingContext2D",
  "CanvasGradient", "CanvasPattern", "OffscreenCanvas",
  // Types needed for union types
  "ImageBitmap", "ImageData", "Blob",
  // Shadow DOM
  "ShadowRoot", "HTMLSlotElement",
  // Typed Arrays (JavaScript built-in types)
  "Float32Array", "Float64Array",
  "Int8Array", "Int16Array", "Int32Array",
  "Uint8Array", "Uint8ClampedArray", "Uint16Array", "Uint32Array",
  "BigInt64Array", "BigUint64Array",
  "ArrayBuffer", "DataView",
  // Other
  "Window", "Navigator", "Location", "History", "Storage",
  "AbortController", "AbortSignal", "Range",
  "MutationObserver", "MutationRecord",
]);

/**
 * Abstract interfaces (no constructor) - these use trait objects &TFoo
 */
const ABSTRACT_INTERFACES = new Set<string>();

/**
 * Register an abstract interface (no real constructor)
 */
export function registerAbstractInterface(name: string): void {
  ABSTRACT_INTERFACES.add(name);
}

/**
 * Check if an interface is abstract (uses trait objects)
 */
export function isAbstractInterface(name: string): boolean {
  return ABSTRACT_INTERFACES.has(name);
}

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
export function isKnownDictionary(name: string): boolean {
  return KNOWN_DICTIONARIES.has(name);
}

/**
 * Check if a type name is a known enum
 */
export function isKnownEnum(name: string): boolean {
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
  isTypedefUnion?: boolean;  // True if this is a typedef union (like CanvasImageSource)
}

/**
 * Map a parsed IDL type to MoonBit type
 */
export function mapIdlType(idlType: ParsedType, contextName?: string): MappedType {
  switch (idlType.type) {
    case "void":
      return { moonbitType: "Unit", needsConversion: false, isOptional: false };

    case "any":
      return { moonbitType: "JsValue", needsConversion: false, isOptional: false };

    case "primitive": {
      const name = idlType.name;
      if (!name) {
        return { moonbitType: "JsValue", needsConversion: false, isOptional: false };
      }
      if (name === "undefined") {
        return { moonbitType: "Unit", needsConversion: false, isOptional: false };
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
      if (name === "OnErrorEventHandler") {
        return {
          moonbitType: "OnErrorEventHandler",
          needsConversion: true,
          isOptional: false,
        };
      }
      if (name === "OnBeforeUnloadEventHandler") {
        return {
          moonbitType: "OnBeforeUnloadEventHandler",
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
      if (KNOWN_TYPEDEFS.has(name)) {
        return {
          moonbitType: name,
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

      // Fully abstract interfaces (no constructor at all) use trait objects
      if (isAbstractInterface(name)) {
        return {
          moonbitType: `&T${name}`,
          needsConversion: true,
          isOptional: false,
        };
      }

      // Reference to a known interface (concrete or [HTMLConstructor] only)
      return {
        moonbitType: name,
        needsConversion: true,
        isOptional: false,
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
      return { moonbitType: "JsValue", needsConversion: false, isOptional: false };
  }
}

/**
 * Get the default value expression for an optional parameter
 */
export function getDefaultValueExpr(
  defaultValue: string | undefined,
  idlType: ParsedType
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
 * Check if a type is a known interface
 */
export function isInterfaceType(typeName: string): boolean {
  if (PRIMITIVE_TYPE_MAP[typeName]) return false;
  const nonInterfaces = ["void", "undefined", "any", "object"];
  if (nonInterfaces.includes(typeName)) return false;
  return true;
}

/**
 * Get all type references from a parsed type
 */
export function getTypeReferences(idlType: ParsedType): string[] {
  const refs: string[] = [];

  switch (idlType.type) {
    case "reference":
      if (idlType.name) refs.push(idlType.name);
      break;

    case "sequence":
    case "promise":
    case "nullable":
    case "frozen-array":
      if (idlType.elementType) {
        refs.push(...getTypeReferences(idlType.elementType));
      }
      break;

    case "union":
      if (idlType.memberTypes) {
        for (const memberType of idlType.memberTypes) {
          refs.push(...getTypeReferences(memberType));
        }
      }
      break;

    case "record":
      if (idlType.keyType) refs.push(...getTypeReferences(idlType.keyType));
      if (idlType.valueType) refs.push(...getTypeReferences(idlType.valueType));
      break;
  }

  return refs;
}

/**
 * Format a MoonBit parameter declaration
 */
export function formatParam(
  name: string,
  type: ParsedType,
  optional: boolean,
  defaultValue?: string
): string {
  const mapped = mapIdlType(type);
  const safeName = escapeKeyword(toSnakeCase(name));

  let typeStr = mapped.moonbitType;

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
 * Generate MoonBit expression to convert a value to JsValue
 */
export function toJsConversionExpr(
  varName: string,
  idlType: ParsedType,
  isOptional: boolean = false
): string {
  const mapped = mapIdlType(idlType);
  const safeName = escapeKeyword(toSnakeCase(varName));

  if (isOptional) {
    return `opt_to_js(${safeName})`;
  }

  if (!mapped.needsConversion) {
    return safeName;
  }

  return `${safeName}.to_js()`;
}
