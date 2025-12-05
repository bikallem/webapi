/**
 * Callback Emitter
 * 
 * Generates MoonBit code for Web IDL callback types.
 */

import type { ParsedCallback, ParsedParam } from "../types.js";
import { toSnakeCase, escapeKeyword, toFfiModuleName } from "../utils.js";
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
 * pub fn EventHandler::new(f: (Event) -> Unit) -> EventHandler
 */
function emitCallbackConstructor(callback: ParsedCallback): string {
  const moduleName = toFfiModuleName(callback.name);

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

  // Public constructor passes function directly
  const wrapperFn = `///|
pub fn ${callback.name}::new(f : ${closureType}) -> ${callback.name} = "${moduleName}" "new"`;
  return `${wrapperFn}`;
}

/**
 * Emit complete code for a callback
 */
export function emitCallback(callback: ParsedCallback): string {
  const parts: string[] = [];

  // Header
  parts.push(`// Auto-generated MoonBit bindings for ${callback.name} callback`);
  parts.push(`// Do not edit manually`);


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
