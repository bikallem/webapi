///|
fn trusted_type_policy_factory_create_policy_ffi(
  obj : JsValue,
  policy_name : JsValue,
  policy_options : JsValue,
) -> TrustedTypePolicy = "webapi_TrustedTypePolicyFactory" "createPolicy"

///|
fn trusted_type_policy_factory_is_html_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool = "webapi_TrustedTypePolicyFactory" "isHTML"

///|
fn trusted_type_policy_factory_is_script_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool = "webapi_TrustedTypePolicyFactory" "isScript"

///|
fn trusted_type_policy_factory_is_script_url_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool = "webapi_TrustedTypePolicyFactory" "isScriptURL"

///|
fn trusted_type_policy_factory_empty_html_ffi(obj : JsValue) -> TrustedHTML = "webapi_TrustedTypePolicyFactory" "get_emptyHTML"

///|
fn trusted_type_policy_factory_empty_script_ffi(obj : JsValue) -> TrustedScript = "webapi_TrustedTypePolicyFactory" "get_emptyScript"

///|
fn trusted_type_policy_factory_get_attribute_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  attribute : JsValue,
  element_ns : JsValue,
  attr_ns : JsValue,
) -> JsValue = "webapi_TrustedTypePolicyFactory" "getAttributeType"

///|
fn trusted_type_policy_factory_get_property_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  property : JsValue,
  element_ns : JsValue,
) -> JsValue = "webapi_TrustedTypePolicyFactory" "getPropertyType"

///|
fn trusted_type_policy_factory_default_policy_ffi(
  obj : JsValue,
) -> TrustedTypePolicy = "webapi_TrustedTypePolicyFactory" "get_defaultPolicy"
