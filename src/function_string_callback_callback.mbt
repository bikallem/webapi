// Do not edit. This file is generated.
// MoonBit type: FunctionStringCallback
// Specifications: html.idl

///|
#external
pub type FunctionStringCallback

///|
pub impl TJsValue for FunctionStringCallback with to_js(
  self : FunctionStringCallback,
) -> JsValue = "%identity"

///|
extern "js" fn function_string_callback_ffi(
  f : (String) -> Unit,
) -> FunctionStringCallback = "(f) => f"

///|
pub fn FunctionStringCallback::new(
  f : (String) -> Unit,
) -> FunctionStringCallback {
  function_string_callback_ffi(f)
}
