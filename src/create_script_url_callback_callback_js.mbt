pub fn CreateScriptURLCallback::new(f : (String, JsValue) -> String) -> CreateScriptURLCallback { create_script_url_callback_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn create_script_url_callback_ffi(f : JsValue) -> JsValue = "(f) => f"