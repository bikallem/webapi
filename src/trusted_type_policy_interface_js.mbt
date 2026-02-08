extern "js" fn trusted_type_policy_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn trusted_type_policy_create_html_ffi(obj: JsValue, input: JsValue, arguments: JsValue) -> JsValue = "(obj, input, arguments) => obj.createHTML(input, arguments)"

extern "js" fn trusted_type_policy_create_script_ffi(obj: JsValue, input: JsValue, arguments: JsValue) -> JsValue = "(obj, input, arguments) => obj.createScript(input, arguments)"

extern "js" fn trusted_type_policy_create_script_url_ffi(obj: JsValue, input: JsValue, arguments: JsValue) -> JsValue = "(obj, input, arguments) => obj.createScriptURL(input, arguments)"