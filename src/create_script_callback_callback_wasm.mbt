pub fn CreateScriptCallback::new(f : (String, JsValue) -> String) -> CreateScriptCallback {
  let w : (JsValue, JsValue) -> JsValue = fn(a0 : JsValue, a1 : JsValue) { TJsValue::to_js(f(a0.unsafe_cast(), a1.unsafe_cast())) }
  create_script_callback_ffi(w).unsafe_cast()
}

///|
fn create_script_callback_ffi(f : (JsValue, JsValue) -> JsValue) -> JsValue = "webapi_CreateScriptCallback" "new"