///|
pub fn FunctionStringCallback::new(
  f : (String) -> Unit,
) -> FunctionStringCallback {
  let w : (JsValue) -> Unit = fn(a0 : JsValue) { f(a0.unsafe_cast()) }
  function_string_callback_ffi(w).unsafe_cast()
}

///|
fn function_string_callback_ffi(f : (JsValue) -> Unit) -> JsValue = "webapi_FunctionStringCallback" "new"
