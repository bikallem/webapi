///|
pub fn FunctionStringCallback::new(
  f : (String) -> Unit,
) -> FunctionStringCallback {
  function_string_callback_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn function_string_callback_ffi(f : JsValue) -> JsValue = "(f) => f"
