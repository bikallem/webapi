///|
pub fn CreateScriptCallback::new(
  f : (String, JsValue) -> String,
) -> CreateScriptCallback {
  create_script_callback_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn create_script_callback_ffi(f : JsValue) -> JsValue = "(f) => f"
