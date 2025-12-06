import { ParsedInterface, ParsedProperty } from "../parser.js";
import {
  toSnakeCase,
  escapeKeyword,
  toFfiModuleName,
  toTraitName,
  generatePropertyGetterFfiName,
  generatePropertySetterFfiName,
  isFfiSafeType,
  mapIdlType,
  isKnownUnionType,
  formatReturnConversion,
} from "../mapper.js";

/**
 * Get the context name for a property type if it's a union
 * Converts property name to PascalCase union type name
 */
function getPropertyUnionContextName(prop: ParsedProperty): string | undefined {
  if (prop.type.type === "union") {
    // Convert property name to union type name (e.g., strokeStyle -> StrokeStyle)
    return prop.name.charAt(0).toUpperCase() + prop.name.slice(1);
  }
  return undefined;
}

/**
 * Map a property's type, using the property name as context for union types
 */
function mapPropertyType(prop: ParsedProperty) {
  const contextName = getPropertyUnionContextName(prop);
  return mapIdlType(prop.type, contextName);
}

/**
 * Format return type for a property, using the property name as context for union types
 */
function formatPropertyReturnType(prop: ParsedProperty): string {
  const contextName = getPropertyUnionContextName(prop);
  const mapped = mapIdlType(prop.type, contextName);

  if (mapped.moonbitType === "Unit") {
    return "Unit";
  }

  if (mapped.isOptional) {
    return `${mapped.moonbitType}?`;
  }

  return mapped.moonbitType;
}

/**
 * Emit a trait property getter signature (goes in trait definition).
 * Format: methodName(self : Self) -> ReturnType = _
 * @param prop The property to emit
 * @param hasDefaultImpl If true, add `= _` to indicate default implementation exists
 */
export function emitTraitPropertyGetter(
  prop: ParsedProperty,
  hasDefaultImpl: boolean = true,
): string {
  const methodName = escapeKeyword(toSnakeCase(prop.name));
  const returnType = formatPropertyReturnType(prop);
  const defaultImpl = hasDefaultImpl ? " = _" : "";

  return `  ${methodName}(self : Self) -> ${returnType}${defaultImpl}`;
}

/**
 * Emit a trait property setter signature (goes in trait definition).
 * Format: set_methodName(self : Self, value : Type) -> Unit = _
 * For union types, use &TUnionType to accept any implementing type
 * @param prop The property to emit
 * @param hasDefaultImpl If true, add `= _` to indicate default implementation exists
 */
export function emitTraitPropertySetter(
  prop: ParsedProperty,
  hasDefaultImpl: boolean = true,
): string {
  const methodName = `set_${escapeKeyword(toSnakeCase(prop.name))}`;
  const mapped = mapPropertyType(prop);
  const contextName = getPropertyUnionContextName(prop);

  // For union types, use trait reference
  let paramType: string;
  if (contextName && isKnownUnionType(contextName)) {
    paramType = `&T${contextName}`;
  } else {
    paramType = mapped.moonbitType;
  }

  const defaultImpl = hasDefaultImpl ? " = _" : "";
  return `  ${methodName}(self : Self, value : ${paramType}) -> Unit${defaultImpl}`;
}

/**
 * Emit all trait property signatures for an interface.
 * These go directly in the trait definition.
 * @param iface The interface to emit properties for
 * @param hasDefaultImpl If true, add `= _` to indicate default implementations exist
 */
export function emitTraitProperties(
  iface: ParsedInterface,
  hasDefaultImpl: boolean = true,
): string[] {
  const lines: string[] = [];

  for (const prop of iface.properties) {
    if (prop.static) continue; // Skip static, handle separately

    // Getter
    lines.push(emitTraitPropertyGetter(prop, hasDefaultImpl));

    // Setter (if not readonly)
    if (!prop.readonly) {
      lines.push(emitTraitPropertySetter(prop, hasDefaultImpl));
    }
  }

  return lines;
}

/**
 * Emit FFI function for property getter
 */
function emitPropertyGetterFfi(
  iface: ParsedInterface,
  prop: ParsedProperty,
): string {
  const ffiName = generatePropertyGetterFfiName(iface.name, prop.name);
  const moduleName = toFfiModuleName(iface.name);
  const mapped = mapPropertyType(prop);

  // FFI can only return primitive types or JsValue
  const ffiReturnType =
    isFfiSafeType(mapped.moonbitType) && !mapped.isOptional
      ? mapped.moonbitType
      : "JsValue";

  return `///|
fn ${ffiName}(obj : JsValue) -> ${ffiReturnType} = "${moduleName}" "${prop.name}"`;
}

/**
 * Emit FFI function for property setter
 */
function emitPropertySetterFfi(
  iface: ParsedInterface,
  prop: ParsedProperty,
): string {
  const ffiName = generatePropertySetterFfiName(iface.name, prop.name);
  const moduleName = toFfiModuleName(iface.name);
  const mapped = mapPropertyType(prop);

  // For setter, use JsValue if not FFI-safe
  const paramType = isFfiSafeType(mapped.moonbitType)
    ? mapped.moonbitType
    : "JsValue";

  return `///|
fn ${ffiName}(obj : JsValue, value : ${paramType}) -> Unit = "${moduleName}" "set_${prop.name}"`;
}

/**
 * Emit trait impl for property getter
 */
function emitPropertyGetterImpl(
  iface: ParsedInterface,
  prop: ParsedProperty,
): string {
  const methodName = escapeKeyword(toSnakeCase(prop.name));
  const ffiName = generatePropertyGetterFfiName(iface.name, prop.name);
  const traitName = toTraitName(iface.name);
  const returnType = formatPropertyReturnType(prop);
  const mapped = mapPropertyType(prop);

  // Determine if we need type conversion
  const ffiReturnType =
    isFfiSafeType(mapped.moonbitType) && !mapped.isOptional
      ? mapped.moonbitType
      : "JsValue";

  const ffiCall = `${ffiName}(self.to_js())`;
  const bodyExpr =
    ffiReturnType === returnType
      ? ffiCall
      : formatReturnConversion(ffiCall, mapped);

  return `///|
impl ${traitName} with ${methodName}(self : Self) -> ${returnType} {
  ${bodyExpr}
}`;
}

/**
 * Emit trait impl for property setter
 */
function emitPropertySetterImpl(
  iface: ParsedInterface,
  prop: ParsedProperty,
): string {
  const methodName = `set_${escapeKeyword(toSnakeCase(prop.name))}`;
  const ffiName = generatePropertySetterFfiName(iface.name, prop.name);
  const traitName = toTraitName(iface.name);
  const mapped = mapPropertyType(prop);
  const contextName = getPropertyUnionContextName(prop);

  // For setter, use JsValue if not FFI-safe
  const paramType = isFfiSafeType(mapped.moonbitType)
    ? mapped.moonbitType
    : "JsValue";
  const needsConversion =
    paramType === "JsValue" && mapped.moonbitType !== "JsValue";

  // Check if the type is optional (ends with ?)
  const isOptionalType = mapped.moonbitType.endsWith("?");

  // Check if this is a union type property
  const isUnionType = contextName && isKnownUnionType(contextName);

  // Determine the signature parameter type
  let sigParamType: string;
  if (isUnionType) {
    sigParamType = `&T${contextName}`;
  } else {
    sigParamType = mapped.moonbitType;
  }

  let valueExpr: string;
  if (isUnionType) {
    // Use the union trait's to_js method
    valueExpr = `T${contextName}::to_js(value)`;
  } else if (isOptionalType) {
    // Use opt_to_js for optional types
    valueExpr = "opt_to_js(value)";
  } else if (needsConversion) {
    // Use explicit trait syntax to avoid deprecation warning
    valueExpr = "TJsValue::to_js(value)";
  } else {
    valueExpr = "value";
  }

  return `///|
impl ${traitName} with ${methodName}(self : Self, value : ${sigParamType}) -> Unit {
  ${ffiName}(self.to_js(), ${valueExpr})
}`;
}

/**
 * Emit all property FFI functions and implementations for an interface.
 * @param iface The interface to emit properties for
 * @param isFullyAbstract If true, skip static properties (no external type exists)
 */
export function emitProperties(
  iface: ParsedInterface,
  isFullyAbstract: boolean = false,
): string {
  const parts: string[] = [];

  for (const prop of iface.properties) {
    if (prop.static) {
      // Skip static properties for fully abstract types (no external type to attach to)
      if (isFullyAbstract) continue;

      // Static properties as type methods with direct FFI
      const methodName = escapeKeyword(toSnakeCase(prop.name));
      const mapped = mapPropertyType(prop);
      const moduleName = toFfiModuleName(iface.name);

      // Use FFI-safe return type
      const ffiReturnType =
        isFfiSafeType(mapped.moonbitType) && !mapped.isOptional
          ? mapped.moonbitType
          : "JsValue";

      parts.push(`///|
pub fn ${iface.name}::${methodName}() -> ${ffiReturnType} = "${moduleName}" "static_${prop.name}"`);

      if (!prop.readonly) {
        const setterParamType = isFfiSafeType(mapped.moonbitType)
          ? mapped.moonbitType
          : "JsValue";
        parts.push(`///|
pub fn ${iface.name}::set_${methodName}(value : ${setterParamType}) -> Unit = "${moduleName}" "static_set_${prop.name}"`);
      }
    } else {
      // Instance properties: FFI + impl (default implementations for trait)
      parts.push(emitPropertyGetterFfi(iface, prop));
      parts.push(emitPropertyGetterImpl(iface, prop));

      if (!prop.readonly) {
        parts.push(emitPropertySetterFfi(iface, prop));
        parts.push(emitPropertySetterImpl(iface, prop));
      }
    }
  }

  return parts.join("\n\n");
}
