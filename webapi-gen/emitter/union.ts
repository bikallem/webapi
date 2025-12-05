/**
 * Union Type Emitter
 *
 * Generates MoonBit code for Web IDL union types.
 *
 * For argument unions like (DOMString or long), generates traits:
 *
 * trait SomeContextArg {
 *   to_js(Self) -> JsValue
 * }
 *
 * For property unions like strokeStyle: (DOMString or CanvasGradient or CanvasPattern),
 * generates external types with traits (like RenderingContext pattern):
 *
 * #external
 * pub type StrokeStyle
 *
 * pub(open) trait TStrokeStyle {
 *   to_js(self : Self) -> JsValue
 * }
 */

import type { ParsedType, ParsedIdl } from "../types.js";
import type { UnionTypeContext } from "../mapping.js";
import { mapIdlType, registerUnionType } from "../mapping.js";
import { toSnakeCase } from "../utils.js";
import { getUnionMemberMoonbitType } from "./unionUtils.js";

/**
 * Built-in types from typed_arrays.mbt that can be used in unions
 */
const TYPED_ARRAY_TYPES = new Set([
  "ArrayBuffer",
  "DataView",
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
]);

/**
 * Get the MoonBit type name for a union member
 */
function getMemberTypeName(memberType: ParsedType): string {
  const mapped = mapIdlType(memberType);
  return mapped.moonbitType;
}

/**
 * Emit a union type trait and its implementations (for arguments)
 */
export function emitUnionType(union: UnionTypeContext): string {
  const parts: string[] = [];

  // Trait definition
  parts.push(`///|
trait ${union.contextName} {
  to_js(Self) -> JsValue
}`);

  // Implementation for each member type
  const seenTypes = new Set<string>();

  for (const memberType of union.memberTypes) {
    const typeName = getMemberTypeName(memberType);

    // Skip duplicates
    if (seenTypes.has(typeName)) continue;
    seenTypes.add(typeName);

    parts.push(`///|
impl ${union.contextName} for ${typeName} with to_js(self : ${typeName}) -> JsValue = "%identity"`);
  }

  // Also add JsNull implementation for nullable unions
  if (!seenTypes.has("JsNull")) {
    parts.push(`///|
pub impl ${union.contextName} for JsNull with to_js(self : JsNull) -> JsValue = "%identity"`);
  }

  return parts.join("\n\n");
}

/**
 * Collect all union types from an interface and generate code
 */
export function collectAndEmitUnions(
  interfaceName: string,
  unions: Map<string, UnionTypeContext>,
): string {
  const parts: string[] = [];

  for (const [_name, union] of unions) {
    parts.push(emitUnionType(union));
  }

  return parts.join("\n\n");
}

// ============================================================================
// Property Union Types (external type + trait pattern like RenderingContext)
// ============================================================================

/**
 * Represents a collected union type from a property
 */
export interface CollectedUnionType {
  name: string; // PascalCase name derived from property name (e.g., FillStyle)
  memberTypes: ParsedType[]; // The union member types
  memberNames: string[]; // Resolved member names (e.g., ["String", "CanvasGradient", "CanvasPattern"])
}

/**
 * Extract union member names from a union type
 * Uses the shared getUnionMemberMoonbitType from unionUtils
 */
function getUnionMemberNames(unionType: ParsedType): string[] {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return [];
  }

  const names: string[] = [];
  for (const member of unionType.memberTypes) {
    const name = getUnionMemberMoonbitType(member);
    if (name && name !== "Unit" && name !== "JsValue") {
      names.push(name);
    }
  }
  return names;
}

/**
 * Convert property name to union type name
 * e.g., strokeStyle -> StrokeStyle, fillStyle -> FillStyle
 */
function propertyNameToTypeName(propName: string): string {
  // Handle camelCase by capitalizing first letter
  return propName.charAt(0).toUpperCase() + propName.slice(1);
}

/**
 * Collect union types from all properties in parsed IDL
 * Returns a map of union type name -> CollectedUnionType
 */
export function collectPropertyUnionTypes(
  idl: ParsedIdl,
): Map<string, CollectedUnionType> {
  const unionTypes = new Map<string, CollectedUnionType>();

  for (const [_, iface] of idl.interfaces) {
    for (const prop of iface.properties) {
      if (prop.type.type === "union" && prop.type.memberTypes) {
        const typeName = propertyNameToTypeName(prop.name);

        // Skip if we already have this union type
        if (unionTypes.has(typeName)) {
          continue;
        }

        const memberNames = getUnionMemberNames(prop.type);
        if (memberNames.length > 0) {
          unionTypes.set(typeName, {
            name: typeName,
            memberTypes: prop.type.memberTypes,
            memberNames,
          });
        }
      }
    }
  }

  return unionTypes;
}

/**
 * Register all collected union types so they can be recognized in type mapping
 */
export function registerCollectedUnionTypes(
  unionTypes: Map<string, CollectedUnionType>,
): void {
  for (const [name, unionType] of unionTypes) {
    registerUnionType(name, unionType.memberNames);
  }
}

/**
 * Emit a property union type file using the external type + open trait pattern
 * Skips fully abstract interface types (they have no external type)
 */
export function emitPropertyUnionType(
  unionType: CollectedUnionType,
  idl: ParsedIdl,
): string {
  const lines: string[] = [];
  const typeName = unionType.name;
  const traitName = `T${typeName}`;

  // Header
  lines.push(`// Auto-generated MoonBit bindings for ${typeName} union type`);
  lines.push("");
  lines.push("// Do not edit manually");
  lines.push("");

  // External type
  lines.push("///|");
  lines.push("#external");
  lines.push(`pub type ${typeName}`);
  lines.push("");

  // Open trait
  lines.push("///|");
  lines.push(`pub(open) trait ${traitName} {`);
  lines.push("  to_js(self : Self) -> JsValue");
  lines.push("}");
  lines.push("");

  // into method for downcasting
  lines.push("///|");
  lines.push(
    `pub fn[T : ${traitName}] ${typeName}::into(self : ${typeName}) -> T = "%identity"`,
  );
  lines.push("");

  // Trait implementations for each member type
  for (const memberName of unionType.memberNames) {
    // Check if it's a primitive type
    const isPrimitive =
      memberName === "String" ||
      memberName === "Double" ||
      memberName === "Int" ||
      memberName === "Bool";

    // Check if it's a known interface
    const isKnownInterface = idl.interfaces.has(memberName);

    // Check if it's a typed array type
    const isTypedArray = TYPED_ARRAY_TYPES.has(memberName);

    // Skip if not primitive, not a known interface, and not a typed array
    if (!isPrimitive && !isKnownInterface && !isTypedArray) {
      continue;
    }

    // For String, use String type directly
    if (memberName === "String") {
      lines.push("///|");
      lines.push(`pub impl ${traitName} for String with to_js(`);
      lines.push("  self : String,");
      lines.push(`) -> JsValue = "%identity"`);
      lines.push("");
    } else if (memberName === "Double") {
      lines.push("///|");
      lines.push(`pub impl ${traitName} for Double with to_js(`);
      lines.push("  self : Double,");
      lines.push(`) -> JsValue = "%identity"`);
      lines.push("");
    } else if (memberName === "Int") {
      lines.push("///|");
      lines.push(`pub impl ${traitName} for Int with to_js(`);
      lines.push("  self : Int,");
      lines.push(`) -> JsValue = "%identity"`);
      lines.push("");
    } else if (memberName === "Bool") {
      lines.push("///|");
      lines.push(`pub impl ${traitName} for Bool with to_js(`);
      lines.push("  self : Bool,");
      lines.push(`) -> JsValue = "%identity"`);
      lines.push("");
    } else {
      // Reference to a concrete interface
      lines.push("///|");
      lines.push(`pub impl ${traitName} for ${memberName} with to_js(`);
      lines.push(`  self : ${memberName},`);
      lines.push(`) -> JsValue = "%identity"`);
      lines.push("");
    }
  }

  return lines.join("\n");
}

/**
 * Get the filename for a property union type
 */
export function getPropertyUnionTypeFilename(name: string): string {
  return `${toSnakeCase(name)}.mbt`;
}
