/**
 * Constructor Emitter
 * 
 * Generates MoonBit FFI functions for Web IDL constructors.
 * 
 * Key points:
 * - Optional params with defaults (e.g., data? : String = "") receive that type directly
 * - Optional params without defaults receive T? and need match expression
 * - MoonBit match syntax uses newlines between cases, not commas
 */

import type { ParsedInterface, ParsedConstructor } from "../types.js";
import { 
  toSnakeCase, 
  escapeKeyword, 
  toFfiModuleName,
} from "../utils.js";
import { mapIdlType, getDefaultValueExpr } from "../mapping.js";

/**
 * Emit constructor as X::new() method
 */
function emitConstructor(
  iface: ParsedInterface, 
  constructor: ParsedConstructor,
  index: number
): string {
  const moduleName = toFfiModuleName(iface.name);
  
  // Use "new" for first constructor, "new2", "new3" etc for overloads
  const methodName = index === 0 ? "new" : `new${index + 1}`;
  
  // For constructors with no params
  if (constructor.params.length === 0) {
    return `///|
pub fn ${iface.name}::${methodName}() -> ${iface.name} = "${moduleName}" "new"`;
  }
  
  // Build parameter list for wrapper function
  const params: string[] = [];
  // Track which optional params have defaults (these receive the type directly, not Option)
  const optionalWithDefault: Set<string> = new Set();
  
  for (const param of constructor.params) {
    const mapped = mapIdlType(param.type);
    const paramName = escapeKeyword(toSnakeCase(param.name));
    
    if (param.optional) {
      // Get default value if any
      const defaultVal = param.default ? getDefaultValueExpr(param.default, param.type) : undefined;
      if (defaultVal) {
        // Has default - param receives the type directly, not Option
        params.push(`${paramName}? : ${mapped.moonbitType} = ${defaultVal}`);
        optionalWithDefault.add(paramName);
      } else {
        // No default - param is Option[T]
        params.push(`${paramName}? : ${mapped.moonbitType}`);
      }
    } else {
      params.push(`${paramName} : ${mapped.moonbitType}`);
    }
  }
  
  const paramsStr = params.join(", ");
  
  // Check if we need a wrapper (for optional params or type conversion)
  const hasOptionalParams = constructor.params.some(p => p.optional);
  const needsConversion = constructor.params.some(p => mapIdlType(p.type).needsConversion);
  
  if (!hasOptionalParams && !needsConversion) {
    // Direct FFI binding - but need to check if types are FFI-safe
    const allFfiSafe = constructor.params.every(p => {
      const mapped = mapIdlType(p.type);
      return !mapped.moonbitType.includes("[") && !mapped.moonbitType.startsWith("&");
    });
    
    if (allFfiSafe) {
      return `///|
pub fn ${iface.name}::${methodName}(${paramsStr}) -> ${iface.name} = "${moduleName}" "new"`;
    }
  }
  
  // Need wrapper function
  // First emit the FFI function - all params are JsValue
  const ffiParams: string[] = [];
  for (const param of constructor.params) {
    const paramName = escapeKeyword(toSnakeCase(param.name));
    ffiParams.push(`${paramName} : JsValue`);
  }
  const ffiParamsStr = ffiParams.join(", ");
  const ffiName = `${toSnakeCase(iface.name)}_new${index > 0 ? index + 1 : ""}_ffi`;
  
  // Build FFI call arguments with proper conversions
  const callArgs: string[] = [];
  
  for (const param of constructor.params) {
    const paramName = escapeKeyword(toSnakeCase(param.name));
    const mapped = mapIdlType(param.type);
    
    if (param.optional) {
      if (optionalWithDefault.has(paramName)) {
        // Has default - param is the type directly, convert with TJsValue::to_js
        if (mapped.needsConversion) {
          callArgs.push(`TJsValue::to_js(${paramName})`);
        } else {
          callArgs.push(paramName);
        }
      } else {
        // No default - param is Option[T], need match expression
        // MoonBit match syntax: cases separated by newlines, not commas
        callArgs.push(`match ${paramName} {
      Some(v) => TJsValue::to_js(v)
      None => JsValue::undefined()
    }`);
      }
    } else {
      // Required param
      if (mapped.needsConversion) {
        callArgs.push(`TJsValue::to_js(${paramName})`);
      } else {
        callArgs.push(paramName);
      }
    }
  }
  
  const callArgsStr = callArgs.join(", ");
  
  return `///|
fn ${ffiName}(${ffiParamsStr}) -> ${iface.name} = "${moduleName}" "new"

///|
pub fn ${iface.name}::${methodName}(${paramsStr}) -> ${iface.name} {
  ${ffiName}(${callArgsStr})
}`;
}

/**
 * Emit all constructors for an interface
 */
export function emitConstructors(iface: ParsedInterface): string {
  if (iface.constructors.length === 0) {
    return "";
  }
  
  const parts: string[] = [];
  
  for (let i = 0; i < iface.constructors.length; i++) {
    parts.push(emitConstructor(iface, iface.constructors[i], i));
  }
  
  return parts.join("\n\n");
}
