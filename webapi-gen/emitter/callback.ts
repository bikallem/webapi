/**
 * Callback Emitter
 *
 * Generates MoonBit code for Web IDL callback types.
 */

import type { ParsedCallback, ParsedParam, ParsedType } from "../types.js";
import {
  toSnakeCase,
  toFfiModuleName,
  emitExternalType as emitExternalTypeCommon,
  emitTJsValueImpl as emitTJsValueImplCommon,
} from "../utils.js";
import { mapIdlType, formatReturnType } from "../mapping.js";

/**
 * Generate a closure type string from parameters and return type
 * Example: (Event) -> Unit or (String, Int) -> Promise[String]
 */
export function buildClosureType(
  params: ParsedParam[],
  returnType: ParsedType,
): string {
  const paramTypes: string[] = [];
  for (const param of params) {
    const mapped = mapIdlType(param.type);
    paramTypes.push(mapped.moonbitType);
  }

  const returnTypeStr = formatReturnType(returnType);
  const closureParamStr = paramTypes.join(", ");
  return `(${closureParamStr}) -> ${returnTypeStr}`;
}

/**
 * Generate a constructor function for a callback-like type
 * Example: pub fn EventHandler::new(f : (Event) -> Unit) -> EventHandler = "webapi_EventHandler" "new"
 */
export function emitCallbackConstructor(
  typeName: string,
  moduleName: string,
  closureType: string,
): string {
  return `///|
pub fn ${typeName}::new(f : ${closureType}) -> ${typeName} = "${moduleName}" "new"`;
}

/**
 * Emit external type declaration for callback
 */
function emitCallbackType(callback: ParsedCallback): string {
  return emitExternalTypeCommon(callback.name);
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(callback: ParsedCallback): string {
  return emitTJsValueImplCommon(callback.name);
}

/**
 * Emit callback constructor as TypeName::new FFI binding
 *
 * Creates functions like:
 * pub fn EventHandler::new(f: (Event) -> Unit) -> EventHandler
 */
function emitCallbackConstructorImpl(callback: ParsedCallback): string {
  const moduleName = toFfiModuleName(callback.name);
  const closureType = buildClosureType(callback.params, callback.returnType);
  return emitCallbackConstructor(callback.name, moduleName, closureType);
}

/**
 * Emit complete code for a callback
 */
export function emitCallback(callback: ParsedCallback): string {
  const parts: string[] = [];

  // Header
  parts.push(
    `// Auto-generated MoonBit bindings for ${callback.name} callback`,
  );
  parts.push(`// Do not edit manually`);

  // Type and impl
  parts.push(emitCallbackType(callback));
  parts.push(emitTJsValueImpl(callback));

  // Constructor
  parts.push(emitCallbackConstructorImpl(callback));

  return parts.join("\n\n");
}

/**
 * Get filename for callback
 */
export function getCallbackFilename(callbackName: string): string {
  return `${toSnakeCase(callbackName)}.mbt`;
}
