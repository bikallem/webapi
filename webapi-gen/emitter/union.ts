/**
 * Union Type Emitter
 * 
 * Generates MoonBit argument traits for Web IDL union types.
 * 
 * For a union like (DOMString or long), generates:
 * 
 * trait SomeContextArg {
 *   to_js(Self) -> JsValue
 * }
 * 
 * impl SomeContextArg for String with to_js(self) -> JsValue = "%identity"
 * impl SomeContextArg for Int with to_js(self) -> JsValue = "%identity"
 */

import type { ParsedType } from "../types.js";
import type { UnionTypeContext } from "../mapping.js";
import { mapIdlType } from "../mapping.js";

/**
 * Get the MoonBit type name for a union member
 */
function getMemberTypeName(memberType: ParsedType): string {
  const mapped = mapIdlType(memberType);
  return mapped.moonbitType;
}

/**
 * Emit a union type trait and its implementations
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
  unions: Map<string, UnionTypeContext>
): string {
  const parts: string[] = [];
  
  for (const [name, union] of unions) {
    parts.push(emitUnionType(union));
  }
  
  return parts.join("\n\n");
}
