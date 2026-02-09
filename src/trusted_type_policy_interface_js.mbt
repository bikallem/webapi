///|
extern "js" fn trusted_type_policy_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn trusted_type_policy_name_ffi(obj : JsValue) -> String {
  trusted_type_policy_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn trusted_type_policy_create_html_ffi_js(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, input, _arguments) => obj.createHTML(input, _arguments)"

///|
fn trusted_type_policy_create_html_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedHTML {
  trusted_type_policy_create_html_ffi_js(obj, input, arguments).unsafe_cast()
}

///|
extern "js" fn trusted_type_policy_create_script_ffi_js(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, input, _arguments) => obj.createScript(input, _arguments)"

///|
fn trusted_type_policy_create_script_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScript {
  trusted_type_policy_create_script_ffi_js(obj, input, arguments).unsafe_cast()
}

///|
extern "js" fn trusted_type_policy_create_script_url_ffi_js(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, input, _arguments) => obj.createScriptURL(input, _arguments)"

///|
fn trusted_type_policy_create_script_url_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScriptURL {
  trusted_type_policy_create_script_url_ffi_js(obj, input, arguments).unsafe_cast()
}
