///|
extern "js" fn trusted_html_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn trusted_html_to_json_ffi(obj : JsValue) -> String {
  trusted_html_to_json_ffi_js(obj).unsafe_cast()
}
