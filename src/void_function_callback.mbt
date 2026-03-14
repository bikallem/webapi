// Do not edit. This file is generated.
// MoonBit type: VoidFunction
// Specifications: webidl.idl

/// [VoidFunction](https://developer.mozilla.org/en-US/docs/Web/API/VoidFunction)
#external
pub type VoidFunction

pub impl TJsValue for VoidFunction with to_js(self: VoidFunction) -> JsValue = "%identity"

pub impl FromJsAny for VoidFunction with from_js_any(value : JsAny) -> VoidFunction = "%identity"

pub fn VoidFunction::new(callback : () -> Unit) -> VoidFunction { void_function_ffi(callback) }

#cfg(target="js")
extern "js" fn void_function_ffi(callback : () -> Unit) -> VoidFunction = "(callback) => callback"

#cfg(target="wasm-gc")
fn void_function_ffi(callback : () -> Unit) -> VoidFunction = "webapi_VoidFunction" "new"