/**
 * Dictionary Emitter
 * 
 * Generates MoonBit code for Web IDL dictionaries (options objects).
 */

import type { ParsedDictionary, ParsedDictionaryMember } from "../types.js";
import {
  toSnakeCase,
  escapeKeyword,
  toFfiModuleName,
  formatIdlSourceAsComment,
} from "../utils.js";
import { mapIdlType, formatParam, getDefaultValueExpr } from "../mapping.js";

/**
 * Emit external type declaration for dictionary
 */
function emitDictionaryType(dict: ParsedDictionary): string {
  return `///|
#external
pub type ${dict.name}`;
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(dict: ParsedDictionary): string {
  return `///|
pub impl TJsValue for ${dict.name} with to_js(self : ${dict.name}) -> JsValue = "%identity"`;
}

/**
 * Emit the FFI constructor function
 */
function emitDictionaryFfi(dict: ParsedDictionary): string {
  const moduleName = toFfiModuleName(dict.name);
  const ffiName = `${toSnakeCase(dict.name)}_ffi`;

  // All dictionary fields go as JsValue params
  const params: string[] = [];
  for (const member of dict.members) {
    const paramName = escapeKeyword(toSnakeCase(member.name));
    params.push(`${paramName} : JsValue`);
  }

  const paramsStr = params.join(", ");

  if (params.length === 0) {
    return `///|
fn ${ffiName}() -> ${dict.name} = "${moduleName}" "new"`;
  }

  return `///|
fn ${ffiName}(${paramsStr}) -> ${dict.name} = "${moduleName}" "new"`;
}

/**
 * Helper to generate conversion expression for a parameter
 */
function toJsConversion(paramName: string, isRequired: boolean, mapped: { needsConversion: boolean }): string {
  if (isRequired) {
    return mapped.needsConversion ? `${paramName}.to_js()` : paramName;
  }
  return `TJsValue::opt_to_js(${paramName})`;
}

/**
 * Emit the public constructor method with optional parameters
 */
function emitDictionaryBuilder(dict: ParsedDictionary): string {
  const ffiName = `${toSnakeCase(dict.name)}_ffi`;

  if (dict.members.length === 0) {
    return `///|
pub fn ${dict.name}::new() -> ${dict.name} {
  ${ffiName}()
}`;
  }

  // Build parameter list with optional params and defaults
  const params: string[] = [];
  // Track which params are truly optional (Option type) vs have defaults
  const memberInfo: { name: string; isOption: boolean; needsConversion: boolean }[] = [];

  for (const member of dict.members) {
    const paramName = escapeKeyword(toSnakeCase(member.name));
    const mapped = mapIdlType(member.type);

    if (member.required) {
      params.push(`${paramName} : ${mapped.moonbitType}`);
      memberInfo.push({ name: paramName, isOption: false, needsConversion: mapped.needsConversion });
    } else {
      // Optional with possible default
      const defaultExpr = getDefaultValueExpr(member.default, member.type);
      if (defaultExpr) {
        // Has default - not wrapped in Option
        params.push(`${paramName}? : ${mapped.moonbitType} = ${defaultExpr}`);
        memberInfo.push({ name: paramName, isOption: false, needsConversion: mapped.needsConversion });
      } else {
        // No default - truly optional (Option type)
        params.push(`${paramName}? : ${mapped.moonbitType}`);
        memberInfo.push({ name: paramName, isOption: true, needsConversion: mapped.needsConversion });
      }
    }
  }

  const paramsStr = params.join(",\n  ");

  // Build FFI call arguments with conversions
  const letBindings: string[] = [];
  const args: string[] = [];

  for (const info of memberInfo) {
    const paramName = info.name;

    if (info.isOption) {
      // Truly optional - use opt_to_js
      const jsVarName = `${paramName}_js`;
      letBindings.push(`  let ${jsVarName} = opt_to_js(${paramName})`);
      args.push(jsVarName);
    } else {
      // Required or has default - convert directly
      if (info.needsConversion) {
        args.push(`${paramName}.to_js()`);
      } else {
        args.push(paramName);
      }
    }
  }

  const argsStr = args.join(", ");
  const bindingsStr = letBindings.length > 0 ? letBindings.join("\n") + "\n" : "";

  return `///|
pub fn ${dict.name}::new(
  ${paramsStr}
) -> ${dict.name} {
${bindingsStr}  ${ffiName}(${argsStr})
}`;
}

/**
 * Emit empty dictionary constructor
 */
function emitEmptyDictionary(dict: ParsedDictionary): string {
  return `///|
pub fn ${dict.name}::empty() -> ${dict.name} = "webapi_Dictionary" "empty"`;
}

/**
 * Emit complete code for a dictionary
 */
export function emitDictionary(dict: ParsedDictionary): string {
  const parts: string[] = [];

  // Header
  parts.push(`// Auto-generated MoonBit bindings for ${dict.name} dictionary`);
  parts.push(`// Do not edit manually`);

  // Include WebIDL source as comment
  const idlComment = formatIdlSourceAsComment(dict.idlSource);
  if (idlComment) {
    parts.push(`//\n// WebIDL Dictionary:\n${idlComment}`);
  }

  // Type and impl
  parts.push(emitDictionaryType(dict));
  parts.push(emitTJsValueImpl(dict));

  // FFI and builder
  if (dict.members.length > 0) {
    parts.push(emitDictionaryFfi(dict));
    parts.push(emitDictionaryBuilder(dict));
  }

  // Default constructor
  parts.push(emitEmptyDictionary(dict));

  return parts.join("\n\n");
}

/**
 * Get filename for dictionary
 */
export function getDictionaryFilename(dictName: string): string {
  return `${toSnakeCase(dictName)}.mbt`;
}
