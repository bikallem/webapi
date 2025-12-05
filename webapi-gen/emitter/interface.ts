/**
 * Interface Emitter
 * 
 * Generates MoonBit code for Web IDL interfaces including:
 * - External type declaration (only for concrete types with constructors)
 * - TJsValue implementation
 * - Trait definition with methods
 * - Trait implementation
 */

import type { ParsedInterface, ParsedIdl } from "../types.js";
import { toSnakeCase, toTraitName, joinBlocks } from "../utils.js";
import { emitMethods, emitTraitMethods } from "./method.js";
import { emitProperties, emitTraitProperties } from "./property.js";
import { emitConstructors } from "./constructor.js";
import { getAllTraitAncestors } from "../widlprocess.js";
import { mapIdlType, formatReturnType, isAbstractInterface } from "../mapping.js";
import { buildClosureType, emitCallbackConstructor } from "./callback.js";

/**
 * Check if an interface has a real constructor (not [HTMLConstructor])
 * Interfaces with real constructors can be instantiated with new()
 */
export function hasRealConstructor(iface: ParsedInterface): boolean {
  return iface.constructors.some(c => !c.isHTMLConstructor);
}

/**
 * Check if an interface has any constructor (real or [HTMLConstructor])
 * Interfaces with no constructors at all are fully abstract (use trait objects)
 */
export function hasAnyConstructor(iface: ParsedInterface): boolean {
  return iface.constructors.length > 0;
}

/**
 * Check if an interface is fully abstract (registered as abstract base class)
 * These use trait objects (&TNode, &TElement) instead of external types
 */
export function isFullyAbstract(iface: ParsedInterface): boolean {
  return isAbstractInterface(iface.name);
}

/**
 * Check if an interface has subtypes (other interfaces inherit from it)
 */
function hasSubtypes(iface: ParsedInterface, interfaces: Map<string, ParsedInterface>): boolean {
  for (const [, other] of interfaces) {
    if (other.inheritance === iface.name) {
      return true;
    }
  }
  return false;
}

/**
 * Emit interface constants as MoonBit pub const values
 */
function emitConstants(iface: ParsedInterface): string | undefined {
  if (iface.constants.length === 0) return undefined;

  const lines: string[] = ["///|"];

  for (const constant of iface.constants) {
    const mapped = mapIdlType(constant.type, `${iface.name}::${constant.name}`);
    lines.push(`pub const ${constant.name} : ${mapped.moonbitType} = ${constant.value}`);
  }

  return lines.join("\n");
}
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
 * Emit null() method for a concrete type
 * This is separate from the trait to allow trait objects
 */
function emitNullMethod(iface: ParsedInterface): string {
  return `///|
pub fn ${iface.name}::null() -> ${iface.name} {
  JsValue::null()
}`;
}

/**
 * Emit into() method for trait objects of abstract types
 * Allows downcasting from &TElement to HTMLDivElement etc.
 */
function emitTraitObjectInto(iface: ParsedInterface): string {
  const traitName = toTraitName(iface.name);
  return `///|
pub fn[T : ${traitName}] &${traitName}::into(self : &${traitName}) -> T = "%identity"`;
}

/**
 * Emit into() method for concrete types with subtypes
 * Allows downcasting from HTMLElement to HTMLDivElement etc.
 */
function emitConcreteTypeInto(iface: ParsedInterface): string {
  const traitName = toTraitName(iface.name);
  return `///|
pub fn[T : ${traitName}] ${iface.name}::into(self : ${iface.name}) -> T = "%identity"`;
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
 * All traits have default implementations (= _) for their methods
 */
function emitTraitDefinition(
  iface: ParsedInterface,
  allInterfaces: Map<string, ParsedInterface>
): string {
  const traitName = toTraitName(iface.name);
  const bounds = getTraitBounds(iface, allInterfaces);

  // Generate trait method signatures with = _ (we always provide default impls)
  const methodSignatures = emitTraitMethods(iface, true);
  // Property methods with = _
  const propertySignatures = emitTraitProperties(iface, true);

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
 * Emit constructor for callback interface
 * Callback interfaces have a single method that defines their signature
 */
function emitCallbackInterfaceConstructor(iface: ParsedInterface): string | undefined {
  if (!iface.isCallbackInterface) return undefined;

  // Find the callback method (usually there's just one)
  const method = iface.methods[0];
  if (!method) return undefined;

  const moduleName = `webapi_${iface.name}`;
  const closureType = buildClosureType(method.params, method.returnType);
  return emitCallbackConstructor(iface.name, moduleName, closureType);
}

/**
 * Emit complete MoonBit file for an interface
 */
export function emitInterface(
  iface: ParsedInterface,
  idl: ParsedIdl
): string {
  const parts: string[] = [];
  const isConcrete = hasRealConstructor(iface);
  const fullyAbstract = isFullyAbstract(iface);

  // Header comment
  parts.push(`// Auto-generated MoonBit bindings for ${iface.name}`);
  parts.push(`// Do not edit manually`);


  // External type declaration - now generated for all interfaces including abstract ones
  parts.push(emitExternalType(iface));

  const constantsBlock = emitConstants(iface);
  if (constantsBlock) {
    parts.push(constantsBlock);
  }

  // Trait definition - all traits have default implementations (= _)
  parts.push(emitTraitDefinition(iface, idl.interfaces));

  // into() method for types with subtypes (enables downcasting)
  const hasSubtypesFlag = hasSubtypes(iface, idl.interfaces);
  if (fullyAbstract || hasSubtypesFlag) {
    // For types with subtypes (including abstract types), generate into() on external type
    parts.push(emitConcreteTypeInto(iface));
  }

  // Trait implementation and TJsValue - all interfaces get these now
  parts.push(emitTraitImpl(iface, idl.interfaces));
  parts.push(emitTJsValueImpl(iface));

  // null() method - only for types with real constructors
  if (isConcrete) {
    parts.push(emitNullMethod(iface));
  }

  // Constructors - only for concrete types with real constructors
  if (isConcrete) {
    const constructorCode = emitConstructors(iface);
    if (constructorCode) {
      parts.push(constructorCode);
    }
  }

  // Callback interface constructor
  const callbackConstructor = emitCallbackInterfaceConstructor(iface);
  if (callbackConstructor) {
    parts.push(callbackConstructor);
  }

  // FFI functions for methods
  // For fully abstract types: generates default implementations (impl TNode with method(...))
  // For concrete types: generates impl Type with method(...) for the specific type
  // Static methods skipped for fully abstract (no external type)
  const methodsFfi = emitMethods(iface, idl, fullyAbstract);
  if (methodsFfi) {
    parts.push(methodsFfi);
  }

  // FFI functions for properties
  const propertiesFfi = emitProperties(iface, fullyAbstract);
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
