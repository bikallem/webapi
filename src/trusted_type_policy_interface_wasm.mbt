///|
fn trusted_type_policy_name_ffi(obj : JsValue) -> JsValue = "webapi_TrustedTypePolicy" "get_name"

///|
fn trusted_type_policy_create_html_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "webapi_TrustedTypePolicy" "createHTML"

///|
fn trusted_type_policy_create_script_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "webapi_TrustedTypePolicy" "createScript"

///|
fn trusted_type_policy_create_script_url_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "webapi_TrustedTypePolicy" "createScriptURL"
