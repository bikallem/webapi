///|
fn trusted_type_policy_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TrustedTypePolicy" "get_name"

///|
fn trusted_type_policy_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(trusted_type_policy_name_ffi_wasm(obj))
}

///|
fn trusted_type_policy_create_html_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedHTML = "webapi_TrustedTypePolicy" "createHTML"

///|
fn trusted_type_policy_create_script_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScript = "webapi_TrustedTypePolicy" "createScript"

///|
fn trusted_type_policy_create_script_url_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScriptURL = "webapi_TrustedTypePolicy" "createScriptURL"
