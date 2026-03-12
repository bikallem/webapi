// Do not edit. This file is generated.
// MoonBit type: FunctionStringCallback
// Specifications: html.idl

/// [FunctionStringCallback](https://developer.mozilla.org/en-US/docs/Web/API/FunctionStringCallback)
#external
pub type FunctionStringCallback

pub impl TJsValue for FunctionStringCallback with to_js(self: FunctionStringCallback) -> JsValue = "%identity"

pub impl FromJsAny for FunctionStringCallback with from_js_any(value : JsAny) -> FunctionStringCallback = "%identity"

pub fn FunctionStringCallback::new(callback : (String) -> Unit) -> FunctionStringCallback { function_string_callback_ffi(callback) }