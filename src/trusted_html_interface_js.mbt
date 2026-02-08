///|
extern "js" fn trusted_html_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"
