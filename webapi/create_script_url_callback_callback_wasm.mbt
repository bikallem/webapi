///|
fn create_script_url_callback_ffi(
  callback : (String, JsValue) -> String,
) -> CreateScriptURLCallback = "webapi_CreateScriptURLCallback" "new"
