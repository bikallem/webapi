///|
extern "js" fn create_script_callback_ffi(
  callback : (String, JsValue) -> String,
) -> CreateScriptCallback = "(callback) => callback"
