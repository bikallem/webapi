// Do not edit. This file is generated.
// MoonBit type: Function
// Specifications: webidl.idl

/// [Function](https://developer.mozilla.org/en-US/docs/Web/API/Function)
#external
pub type Function

pub impl TJsValue for Function with to_js(self: Function) -> JsValue = "%identity"

pub impl FromJsAny for Function with from_js_any(value : JsAny) -> Function = "%identity"

pub fn Function::new(callback : (JsValue) -> JsValue) -> Function { function_ffi(callback) }

#cfg(target="js")
extern "js" fn function_ffi(callback : (JsValue) -> JsValue) -> Function = "(callback) => callback"

#cfg(target="wasm-gc")
fn function_ffi(callback : (JsValue) -> JsValue) -> Function = "webapi_Function" "new"