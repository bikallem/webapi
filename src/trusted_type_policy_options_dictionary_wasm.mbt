///|
fn trusted_type_policy_options_ffi(
  create_html : JsValue,
  create_script : JsValue,
  create_script_url : JsValue,
) -> TrustedTypePolicyOptions = "webapi_TrustedTypePolicyOptions" "new"

///|
fn trusted_type_policy_options_empty_ffi() -> TrustedTypePolicyOptions = "webapi_Dictionary" "empty"
