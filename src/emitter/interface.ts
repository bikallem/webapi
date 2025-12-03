/**
 * Interface Emitter
 * 
 * Generates MoonBit code for Web IDL interfaces including:
 * - External type declaration
 * - TJsValue implementation
 * - Trait definition with methods
 * - Trait implementation
 */

import type { ParsedInterface, ParsedIdl } from "../types.js";
import { toSnakeCase, toTraitName, joinBlocks, formatIdlSourceAsComment } from "../utils.js";
import { emitMethods, emitTraitMethods } from "./method.js";
import { emitProperties, emitTraitProperties } from "./property.js";
import { emitConstructors } from "./constructor.js";
import { getAllTraitAncestors } from "../widlprocess.js";

/**
 * Emit the external type declaration
 */
function emitExternalType(iface: ParsedInterface): string {
  return `///|
#external
pub type ${iface.name}`;
}

/**
 * Emit TJsValue implementation for the type
 */
function emitTJsValueImpl(iface: ParsedInterface): string {
  return `///|
pub impl TJsValue for ${iface.name} with to_js(self : ${iface.name}) -> JsValue = "%identity"`;
}

/**
 * Get trait bounds (parent traits) for an interface
 */
function getTraitBounds(
  iface: ParsedInterface,
  allInterfaces: Map<string, ParsedInterface>
): string[] {
  const bounds: string[] = [];
  
  // Always include TJsValue as base
  bounds.push("TJsValue");
  
  // Add inheritance parent
  if (iface.inheritance && allInterfaces.has(iface.inheritance)) {
    bounds.push(toTraitName(iface.inheritance));
  }
  
  // Add mixin traits (but not if they're just mixins without their own trait)
  for (const mixin of iface.mixins) {
    if (allInterfaces.has(mixin)) {
      bounds.push(toTraitName(mixin));
    }
  }
  
  return bounds;
}

/**
 * Emit the trait definition for an interface
 */
function emitTraitDefinition(
  iface: ParsedInterface,
  allInterfaces: Map<string, ParsedInterface>
): string {
  const traitName = toTraitName(iface.name);
  const bounds = getTraitBounds(iface, allInterfaces);
  
  // Generate trait method signatures (return array of lines, already indented)
  const methodSignatures = emitTraitMethods(iface);
  // Property methods are already indented from emitTraitProperties
  const propertySignatures = emitTraitProperties(iface);
  
  const allSignatures = [...propertySignatures, ...methodSignatures];
  
  // Format bounds
  const boundsStr = bounds.length > 0 ? `: ${bounds.join(" + ")}` : "";
  
  if (allSignatures.length === 0) {
    return `///|
pub trait ${traitName}${boundsStr} {}`;
  }
  
  // Signatures already have proper indentation from emitters
  const signaturesBlock = allSignatures.join("\n");
  
  return `///|
pub trait ${traitName}${boundsStr} {
${signaturesBlock}
}`;
}

/**
 * Emit trait implementation for an interface
 * Also emits implementations for all parent traits (inheritance chain)
 */
function emitTraitImpl(
  iface: ParsedInterface,
  allInterfaces: Map<string, ParsedInterface>
): string {
  const traitName = toTraitName(iface.name);
  const parts: string[] = [];
  
  // Collect all parent traits we need to implement
  const parentTraitsToImpl: string[] = [];
  
  // Walk up the inheritance chain
  let currentName: string | undefined = iface.inheritance;
  while (currentName && allInterfaces.has(currentName)) {
    parentTraitsToImpl.push(currentName);
    const parent = allInterfaces.get(currentName)!;
    currentName = parent.inheritance;
  }
  
  // Emit parent trait implementations in reverse order (from base to derived)
  for (const parentName of parentTraitsToImpl.reverse()) {
    parts.push(`///|\npub impl ${toTraitName(parentName)} for ${iface.name}`);
  }
  
  // Emit the interface's own trait implementation
  parts.push(`///|\npub impl ${traitName} for ${iface.name}`);
  
  return parts.join("\n\n");
}

/**
 * Emit complete MoonBit file for an interface
 */
export function emitInterface(
  iface: ParsedInterface,
  idl: ParsedIdl
): string {
  const parts: string[] = [];
  
  // Header comment
  parts.push(`// Auto-generated MoonBit bindings for ${iface.name}`);
  parts.push(`// Do not edit manually`);
  
  // Include WebIDL source as comment
  const idlComment = formatIdlSourceAsComment(iface.idlSource);
  if (idlComment) {
    parts.push(`//\n// WebIDL Interface:\n${idlComment}`);
  }
  
  // External type declaration
  parts.push(emitExternalType(iface));
  
  // TJsValue implementation
  parts.push(emitTJsValueImpl(iface));
  
  // Trait definition
  parts.push(emitTraitDefinition(iface, idl.interfaces));
  
  // Trait implementation
  parts.push(emitTraitImpl(iface, idl.interfaces));
  
  // Constructors
  const constructorCode = emitConstructors(iface);
  if (constructorCode) {
    parts.push(constructorCode);
  }
  
  // FFI functions for methods
  const methodsFfi = emitMethods(iface);
  if (methodsFfi) {
    parts.push(methodsFfi);
  }
  
  // FFI functions for properties
  const propertiesFfi = emitProperties(iface);
  if (propertiesFfi) {
    parts.push(propertiesFfi);
  }
  
  return parts.join("\n\n");
}

/**
 * Get the output filename for an interface
 */
export function getInterfaceFilename(interfaceName: string): string {
  return `${toSnakeCase(interfaceName)}.mbt`;
}
