///|
extern "js" fn trusted_type_policy_factory_create_policy_ffi(
  obj : JsValue,
  policy_name : JsValue,
  policy_options : JsValue,
) -> JsValue = "(obj, policy_name, policy_options) => obj.createPolicy(policy_name, policy_options)"

///|
extern "js" fn trusted_type_policy_factory_is_html_ffi(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.isHTML(value)"

///|
extern "js" fn trusted_type_policy_factory_is_script_ffi(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.isScript(value)"

///|
extern "js" fn trusted_type_policy_factory_is_script_url_ffi(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.isScriptURL(value)"

///|
extern "js" fn trusted_type_policy_factory_empty_html_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.emptyHTML"

///|
extern "js" fn trusted_type_policy_factory_empty_script_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.emptyScript"

///|
extern "js" fn trusted_type_policy_factory_get_attribute_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  attribute : JsValue,
  element_ns : JsValue,
  attr_ns : JsValue,
) -> JsValue = "(obj, tag_name, attribute, element_ns, attr_ns) => obj.getAttributeType(tag_name, attribute, element_ns, attr_ns)"

///|
extern "js" fn trusted_type_policy_factory_get_property_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  property : JsValue,
  element_ns : JsValue,
) -> JsValue = "(obj, tag_name, property, element_ns) => obj.getPropertyType(tag_name, property, element_ns)"

///|
extern "js" fn trusted_type_policy_factory_default_policy_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.defaultPolicy"
