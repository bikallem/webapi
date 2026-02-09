///|
extern "js" fn trusted_script_url_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn trusted_script_url_to_json_ffi(obj : JsValue) -> String {
  trusted_script_url_to_json_ffi_js(obj).unsafe_cast()
}
