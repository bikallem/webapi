/**
 * Callback Emitter
 * 
 * Generates MoonBit code for Web IDL callback types.
 */

import type { ParsedCallback, ParsedParam } from "../types.js";
import {
  toSnakeCase,
  escapeKeyword,
  toFfiModuleName,
  formatIdlSourceAsComment,
} from "../utils.js";
import { mapIdlType, formatReturnType } from "../mapping.js";

/**
 * Emit external type declaration for callback
 */
function emitCallbackType(callback: ParsedCallback): string {
  return `///|
#external
pub type ${callback.name}`;
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(callback: ParsedCallback): string {
  return `///|
pub impl TJsValue for ${callback.name} with to_js(self : ${callback.name}) -> JsValue = "%identity"`;
}

/**
 * Emit callback constructor as TypeName::new with _ffi wrapper
 * 
 * Creates functions like:
 * fn event_handler_new_ffi(f: JsValue) -> EventHandler
 * pub fn EventHandler::new(f: (Event) -> Unit) -> EventHandler
 */
function emitCallbackConstructor(callback: ParsedCallback): string {
  const moduleName = toFfiModuleName(callback.name);
  const ffiName = `${toSnakeCase(callback.name)}_new_ffi`;

  // Build the function signature for the callback
  const paramTypes: string[] = [];
  for (const param of callback.params) {
    const mapped = mapIdlType(param.type);
    paramTypes.push(mapped.moonbitType);
  }

  const returnType = formatReturnType(callback.returnType);

  // Build closure type: (ParamTypes) -> ReturnType
  const closureParamStr = paramTypes.join(", ");
  const closureType = `(${closureParamStr}) -> ${returnType}`;

  // FFI function takes JsValue
  const ffiFn = `///|
fn ${ffiName}(f : JsValue) -> ${callback.name} = "${moduleName}" "new"`;

  // Wrapper converts function to JsValue
  const wrapperFn = `///|
pub fn ${callback.name}::new(f : ${closureType}) -> ${callback.name} {
  ${ffiName}(fn_to_js(f))
}`;

  return `${ffiFn}\n\n${wrapperFn}`;
}

/**
 * Emit complete code for a callback
 */
export function emitCallback(callback: ParsedCallback): string {
  const parts: string[] = [];

  // Header
  parts.push(`// Auto-generated MoonBit bindings for ${callback.name} callback`);
  parts.push(`// Do not edit manually`);

  // Include WebIDL source as comment
  const idlComment = formatIdlSourceAsComment(callback.idlSource);
  if (idlComment) {
    parts.push(`//\n// WebIDL Callback:\n${idlComment}`);
  }

  // Type and impl
  parts.push(emitCallbackType(callback));
  parts.push(emitTJsValueImpl(callback));

  // Constructor
  parts.push(emitCallbackConstructor(callback));

  return parts.join("\n\n");
}

/**
 * Get filename for callback
 */
export function getCallbackFilename(callbackName: string): string {
  return `${toSnakeCase(callbackName)}.mbt`;
}
