/**
 * Method Emitter
 * 
 * Generates MoonBit FFI functions and trait method signatures for Web IDL methods.
 */

import type { ParsedInterface, ParsedMethod } from "../types.js";
import {
  toSnakeCase,
  escapeKeyword,
  toFfiModuleName,
  toTraitName,
} from "../utils.js";
import { mapIdlType, formatReturnType, getDefaultValueExpr } from "../mapping.js";

/**
 * Generate FFI function name for a method
 */
function getFfiName(interfaceName: string, methodName: string): string {
  return `${toSnakeCase(interfaceName)}_${toSnakeCase(methodName)}_ffi`;
}

/**
 * Emit trait method signature with = _
 * All parameters are required (no defaults) because it's a trait signature
 */
export function emitTraitMethodSignature(method: ParsedMethod): string {
  const methodName = toSnakeCase(method.name);

  // Build parameter list - self first, then all params with optional wrapped in ?
  const params: string[] = ["self : Self"];

  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const paramName = escapeKeyword(toSnakeCase(param.name));

    // Optional params use paramName? : Type syntax
    if (param.optional) {
      params.push(`${paramName}? : ${mapped.moonbitType}`);
    } else {
      params.push(`${paramName} : ${mapped.moonbitType}`);
    }
  }

  const returnType = formatReturnType(method.returnType);
  const paramsStr = params.join(", ");

  return `  ${methodName}(${paramsStr}) -> ${returnType} = _`;
}

/**
 * Emit all trait method signatures for an interface
 */
export function emitTraitMethods(iface: ParsedInterface): string[] {
  const signatures: string[] = [];

  for (const method of iface.methods) {
    if (!method.static && method.name) {
      signatures.push(emitTraitMethodSignature(method));
    }
  }

  return signatures;
}

/**
 * Emit FFI function declaration for a method
 */
function emitMethodFfi(iface: ParsedInterface, method: ParsedMethod): string {
  const ffiName = getFfiName(iface.name, method.name);
  const moduleName = toFfiModuleName(iface.name);
  const jsFuncName = method.name;

  // Build parameter list - for FFI, all params should be JsValue
  const params: string[] = ["obj : JsValue"];

  for (const param of method.params) {
    const paramName = escapeKeyword(toSnakeCase(param.name));
    params.push(`${paramName} : JsValue`);
  }

  const returnType = formatReturnType(method.returnType);
  // FFI returns JsValue for reference types, primitives for others
  const returnTypeStr = returnType === "Unit" ? "Unit" : "JsValue";

  const paramsStr = params.join(", ");

  return `///|
fn ${ffiName}(${paramsStr}) -> ${returnTypeStr} = "${moduleName}" "${jsFuncName}"`;
}

/**
 * Emit trait method implementation
 * No defaults in impl - all params are required, optional ones are T?
 */
function emitTraitMethodImpl(iface: ParsedInterface, method: ParsedMethod): string {
  const methodName = toSnakeCase(method.name);
  const ffiName = getFfiName(iface.name, method.name);
  const traitName = toTraitName(iface.name);

  // Build parameter list - same as trait signature
  const params: string[] = ["self : Self"];
  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const paramName = escapeKeyword(toSnakeCase(param.name));

    // Optional params use paramName? : Type syntax
    if (param.optional) {
      params.push(`${paramName}? : ${mapped.moonbitType}`);
    } else {
      params.push(`${paramName} : ${mapped.moonbitType}`);
    }
  }

  const returnType = formatReturnType(method.returnType);
  const paramsStr = params.join(", ");
  const returnMapped = mapIdlType(method.returnType);

  // Build FFI call arguments with proper conversion
  const letBindings: string[] = [];
  const args: string[] = ["TJsValue::to_js(self)"];

  for (const param of method.params) {
    const paramName = escapeKeyword(toSnakeCase(param.name));
    if (param.optional) {
      // Convert Option[T] to JsValue using opt_to_js
      const jsVarName = `${paramName}_js`;
      letBindings.push(`  let ${jsVarName} = opt_to_js(${paramName})`);
      args.push(jsVarName);
    } else {
      // Convert required params using TJsValue::to_js()
      const mapped = mapIdlType(param.type);
      if (mapped.needsConversion) {
        args.push(`TJsValue::to_js(${paramName})`);
      } else {
        args.push(paramName);
      }
    }
  }

  const argsStr = args.join(", ");
  const bindingsStr = letBindings.length > 0 ? "\n" + letBindings.join("\n") : "";

  // For reference types, we need type conversion
  let returnExpr = `${ffiName}(${argsStr})`;
  if (returnType !== "Unit") {
    if (returnMapped.isOptional) {
      // Use as_option for nullable returns
      returnExpr = `${returnExpr}.as_option()`;
    } else if (returnMapped.needsConversion) {
      // Use unsafe_cast for type conversion
      returnExpr = `${returnExpr}.unsafe_cast()`;
    }
  }

  return `///|
impl ${traitName} with ${methodName}(${paramsStr}) -> ${returnType} {${bindingsStr}
  ${returnExpr}
}`;
}

/**
 * Emit static method as a type method (X::method_name)
 * Static methods can have default values in their wrapper functions
 */
function emitStaticMethod(iface: ParsedInterface, method: ParsedMethod): string {
  const methodName = toSnakeCase(method.name);
  const moduleName = toFfiModuleName(iface.name);
  const jsFuncName = method.name;

  // Check if we need a wrapper (for optional params)
  const hasOptionalParams = method.params.some(p => p.optional);

  if (!hasOptionalParams) {
    // Direct FFI binding - all params required
    const params: string[] = [];
    for (const param of method.params) {
      const mapped = mapIdlType(param.type);
      const safeName = escapeKeyword(toSnakeCase(param.name));
      params.push(`${safeName} : ${mapped.moonbitType}`);
    }

    const returnMapped = mapIdlType(method.returnType);
    const returnType = returnMapped.moonbitType === "Unit" ? "Unit" : "JsValue";
    const paramsStr = params.join(", ");

    return `///|
pub fn ${iface.name}::${methodName}(${paramsStr}) -> ${returnType} = "${moduleName}" "${jsFuncName}"`;
  }

  // Need wrapper for optional params
  // First emit FFI
  const ffiParams: string[] = [];
  for (const param of method.params) {
    const safeName = escapeKeyword(toSnakeCase(param.name));
    ffiParams.push(`${safeName} : JsValue`);
  }
  const ffiParamsStr = ffiParams.join(", ");
  const ffiName = `${toSnakeCase(iface.name)}_${toSnakeCase(method.name)}_ffi`;

  const returnMapped = mapIdlType(method.returnType);
  const returnType = returnMapped.moonbitType === "Unit" ? "Unit" : "JsValue";

  const ffiFn = `///|
fn ${ffiName}(${ffiParamsStr}) -> ${returnType} = "${moduleName}" "${jsFuncName}"`;

  // Then emit wrapper with defaults
  const wrapperParams: string[] = [];
  const letBindings: string[] = [];
  const callArgs: string[] = [];

  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const safeName = escapeKeyword(toSnakeCase(param.name));

    if (param.optional) {
      // Add optional param with default
      const defaultVal = param.default ? getDefaultValueExpr(param.default, param.type) : undefined;
      if (defaultVal) {
        wrapperParams.push(`${safeName}? : ${mapped.moonbitType} = ${defaultVal}`);
      } else {
        wrapperParams.push(`${safeName}? : ${mapped.moonbitType}`);
      }

      // Convert to JsValue
      const jsVarName = `${safeName}_js`;
      letBindings.push(`  let ${jsVarName} = opt_to_js(${safeName})`);
      callArgs.push(jsVarName);
    } else {
      wrapperParams.push(`${safeName} : ${mapped.moonbitType}`);
      if (mapped.needsConversion) {
        callArgs.push(`TJsValue::to_js(${safeName})`);
      } else {
        callArgs.push(safeName);
      }
    }
  }

  const wrapperParamsStr = wrapperParams.join(", ");
  const callArgsStr = callArgs.join(", ");
  const bindingsStr = letBindings.length > 0 ? "\n" + letBindings.join("\n") : "";

  return `${ffiFn}

///|
pub fn ${iface.name}::${methodName}(${wrapperParamsStr}) -> ${returnType} {${bindingsStr}
  ${ffiName}(${callArgsStr})
}`;
}

/**
 * Emit all FFI functions and method implementations for an interface
 */
export function emitMethods(iface: ParsedInterface): string {
  const parts: string[] = [];

  for (const method of iface.methods) {
    if (!method.name) continue;

    if (method.static) {
      parts.push(emitStaticMethod(iface, method));
    } else {
      // Instance methods: FFI + impl
      parts.push(emitMethodFfi(iface, method));
      parts.push(emitTraitMethodImpl(iface, method));
    }
  }

  return parts.join("\n\n");
}
