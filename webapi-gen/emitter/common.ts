/**
 * Common Emitter Utilities
 * 
 * Shared code generation functions used across multiple emitters
 * to reduce duplication and ensure consistency.
 */

/**
 * Emit external type declaration
 * Example: #external pub type EventHandler
 */
export function emitExternalType(typeName: string): string {
    return `///|
#external
pub type ${typeName}`;
}

/**
 * Emit TJsValue implementation for a type
 * Example: pub impl TJsValue for EventHandler with to_js(self : EventHandler) -> JsValue = "%identity"
 */
export function emitTJsValueImpl(typeName: string): string {
    return `///|
pub impl TJsValue for ${typeName} with to_js(self : ${typeName}) -> JsValue = "%identity"`;
}
