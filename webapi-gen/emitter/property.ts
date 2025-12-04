import { ParsedInterface, ParsedProperty } from '../types.js';
import { toSnakeCase, escapeKeyword, toFfiModuleName, toTraitName } from '../utils.js';
import { mapIdlType, formatReturnType, isKnownEnum } from '../mapping.js';

/**
 * Emit a trait property getter signature (goes in trait definition).
 * Format: methodName(self : Self) -> ReturnType = _
 */
export function emitTraitPropertyGetter(prop: ParsedProperty): string {
  const methodName = escapeKeyword(toSnakeCase(prop.name));
  const returnType = formatReturnType(prop.type);

  return `  ${methodName}(self : Self) -> ${returnType} = _`;
}

/**
 * Emit a trait property setter signature (goes in trait definition).
 * Format: set_methodName(self : Self, value : Type) -> Unit = _
 */
export function emitTraitPropertySetter(prop: ParsedProperty): string {
  const methodName = `set_${escapeKeyword(toSnakeCase(prop.name))}`;
  const mapped = mapIdlType(prop.type);
  const paramType = mapped.moonbitType;

  return `  ${methodName}(self : Self, value : ${paramType}) -> Unit = _`;
}

/**
 * Emit all trait property signatures for an interface.
 * These go directly in the trait definition with = _.
 */
export function emitTraitProperties(iface: ParsedInterface): string[] {
  const lines: string[] = [];

  for (const prop of iface.properties) {
    if (prop.static) continue; // Skip static, handle separately

    // Getter
    lines.push(emitTraitPropertyGetter(prop));

    // Setter (if not readonly)
    if (!prop.readonly) {
      lines.push(emitTraitPropertySetter(prop));
    }
  }

  return lines;
}

/**
 * Check if a type is valid for FFI stubs
 */
function isFfiSafeType(moonbitType: string): boolean {
  // Arrays, optionals and generics are not FFI-safe
  if (moonbitType.includes("[") || moonbitType.includes("?")) return false;
  // Only primitives and JsValue are safe
  const safePrimitives = ["Bool", "Int", "Int64", "Double", "String", "Unit", "JsValue"];
  return safePrimitives.includes(moonbitType);
}

/**
 * Emit FFI function for property getter
 */
function emitPropertyGetterFfi(iface: ParsedInterface, prop: ParsedProperty): string {
  const ffiName = `${toSnakeCase(iface.name)}_${toSnakeCase(prop.name)}_ffi`;
  const moduleName = toFfiModuleName(iface.name);
  const mapped = mapIdlType(prop.type);

  // FFI can only return primitive types or JsValue
  const ffiReturnType = isFfiSafeType(mapped.moonbitType) && !mapped.isOptional
    ? mapped.moonbitType
    : "JsValue";

  return `///|
fn ${ffiName}(obj : JsValue) -> ${ffiReturnType} = "${moduleName}" "${prop.name}"`;
}

/**
 * Emit FFI function for property setter
 */
function emitPropertySetterFfi(iface: ParsedInterface, prop: ParsedProperty): string {
  const ffiName = `${toSnakeCase(iface.name)}_set_${toSnakeCase(prop.name)}_ffi`;
  const moduleName = toFfiModuleName(iface.name);
  const mapped = mapIdlType(prop.type);

  // For setter, use JsValue if not FFI-safe
  const paramType = isFfiSafeType(mapped.moonbitType) ? mapped.moonbitType : "JsValue";

  return `///|
fn ${ffiName}(obj : JsValue, value : ${paramType}) -> Unit = "${moduleName}" "set_${prop.name}"`;
}

/**
 * Emit trait impl for property getter
 */
function emitPropertyGetterImpl(iface: ParsedInterface, prop: ParsedProperty): string {
  const methodName = escapeKeyword(toSnakeCase(prop.name));
  const ffiName = `${toSnakeCase(iface.name)}_${toSnakeCase(prop.name)}_ffi`;
  const traitName = toTraitName(iface.name);
  const returnType = formatReturnType(prop.type);
  const mapped = mapIdlType(prop.type);

  // Determine if we need type conversion
  const ffiReturnType = isFfiSafeType(mapped.moonbitType) && !mapped.isOptional
    ? mapped.moonbitType
    : "JsValue";

  let bodyExpr: string;
  if (ffiReturnType === returnType) {
    // No conversion needed
    bodyExpr = `${ffiName}(self.to_js())`;
  } else if (mapped.isOptional) {
    // Use as_option for nullable returns
    bodyExpr = `${ffiName}(self.to_js()).as_option()`;
  } else if (isKnownEnum(mapped.moonbitType)) {
    // Use from_js for enum types and unwrap since browser values should be valid
    bodyExpr = `${mapped.moonbitType}::from_js(${ffiName}(self.to_js())).unwrap()`;
  } else {
    // Use unsafe_cast for type conversion
    bodyExpr = `${ffiName}(self.to_js()).unsafe_cast()`;
  }

  return `///|
impl ${traitName} with ${methodName}(self : Self) -> ${returnType} {
  ${bodyExpr}
}`;
}

/**
 * Emit trait impl for property setter
 */
function emitPropertySetterImpl(iface: ParsedInterface, prop: ParsedProperty): string {
  const methodName = `set_${escapeKeyword(toSnakeCase(prop.name))}`;
  const ffiName = `${toSnakeCase(iface.name)}_set_${toSnakeCase(prop.name)}_ffi`;
  const traitName = toTraitName(iface.name);
  const mapped = mapIdlType(prop.type);

  // For setter, use JsValue if not FFI-safe
  const paramType = isFfiSafeType(mapped.moonbitType) ? mapped.moonbitType : "JsValue";
  const needsConversion = paramType === "JsValue" && mapped.moonbitType !== "JsValue";

  // Check if the type is optional (ends with ?)
  const isOptionalType = mapped.moonbitType.endsWith("?");

  let valueExpr: string;
  if (isOptionalType) {
    // Use opt_to_js for optional types
    valueExpr = "opt_to_js(value)";
  } else if (needsConversion) {
    valueExpr = "TJsValue::to_js(value)";
  } else {
    valueExpr = "value";
  }

  return `///|
impl ${traitName} with ${methodName}(self : Self, value : ${mapped.moonbitType}) -> Unit {
  ${ffiName}(self.to_js(), ${valueExpr})
}`;
}

/**
 * Emit all property FFI functions and implementations for an interface.
 */
export function emitProperties(iface: ParsedInterface): string {
  const parts: string[] = [];

  for (const prop of iface.properties) {
    if (prop.static) {
      // Static properties as type methods with direct FFI
      const methodName = escapeKeyword(toSnakeCase(prop.name));
      const mapped = mapIdlType(prop.type);
      const moduleName = toFfiModuleName(iface.name);

      // Use FFI-safe return type
      const ffiReturnType = isFfiSafeType(mapped.moonbitType) && !mapped.isOptional
        ? mapped.moonbitType
        : "JsValue";

      parts.push(`///|
pub fn ${iface.name}::${methodName}() -> ${ffiReturnType} = "${moduleName}" "static_${prop.name}"`);

      if (!prop.readonly) {
        const setterParamType = isFfiSafeType(mapped.moonbitType) ? mapped.moonbitType : "JsValue";
        parts.push(`///|
pub fn ${iface.name}::set_${methodName}(value : ${setterParamType}) -> Unit = "${moduleName}" "static_set_${prop.name}"`);
      }
    } else {
      // Instance properties: FFI + impl
      parts.push(emitPropertyGetterFfi(iface, prop));
      parts.push(emitPropertyGetterImpl(iface, prop));

      if (!prop.readonly) {
        parts.push(emitPropertySetterFfi(iface, prop));
        parts.push(emitPropertySetterImpl(iface, prop));
      }
    }
  }

  return parts.join('\n\n');
}
