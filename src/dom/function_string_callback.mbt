// Auto-generated MoonBit bindings for FunctionStringCallback callback

// Do not edit manually

///|
#external
pub type FunctionStringCallback

///|
pub impl TJsValue for FunctionStringCallback with to_js(
  self : FunctionStringCallback,
) -> JsValue = "%identity"

///|
fn function_string_callback_new_ffi(f : JsValue) -> FunctionStringCallback = "webapi_FunctionStringCallback" "new"

///|
pub fn FunctionStringCallback::new(
  f : (String) -> Unit,
) -> FunctionStringCallback {
  function_string_callback_new_ffi(fn_to_js(f))
}
