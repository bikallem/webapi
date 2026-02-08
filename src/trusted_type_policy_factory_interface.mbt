// Do not edit. This file is generated.
// MoonBit type: TrustedTypePolicyFactory
// Specifications: trusted-types.idl

/// [TrustedTypePolicyFactory](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory)
#external
pub type TrustedTypePolicyFactory

pub impl TJsValue for TrustedTypePolicyFactory with to_js(self: TrustedTypePolicyFactory) -> JsValue = "%identity"

pub fn[T: TTrustedTypePolicyFactory] TrustedTypePolicyFactory::into(self : TrustedTypePolicyFactory) -> T = "%identity"

pub impl TTrustedTypePolicyFactory for TrustedTypePolicyFactory

/// [TrustedTypePolicyFactory](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory) interface.
pub trait TTrustedTypePolicyFactory: TJsValue {
  create_policy(self : Self, policy_name : String, policy_options? : TrustedTypePolicyOptions) -> TrustedTypePolicy = _
  is_html(self : Self, value : JsValue) -> Bool = _
  is_script(self : Self, value : JsValue) -> Bool = _
  is_script_url(self : Self, value : JsValue) -> Bool = _
  empty_html(self : Self) -> TrustedHTML = _
  empty_script(self : Self) -> TrustedScript = _
  get_attribute_type(self : Self, tag_name : String, attribute : String, element_ns? : String, attr_ns? : String) -> String? = _
  get_property_type(self : Self, tag_name : String, property : String, element_ns? : String) -> String? = _
  default_policy(self : Self) -> TrustedTypePolicy = _
}

/// [TrustedTypePolicyFactory.createPolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/createPolicy)
impl TTrustedTypePolicyFactory with create_policy(self : Self, 
policy_name : String, 
policy_options? : TrustedTypePolicyOptions = TrustedTypePolicyOptions::empty()) -> TrustedTypePolicy {
  trusted_type_policy_factory_create_policy_ffi(TJsValue::to_js(self), TJsValue::to_js(policy_name), TJsValue::to_js(policy_options)).unsafe_cast()
}

/// [TrustedTypePolicyFactory.isHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/isHTML)
impl TTrustedTypePolicyFactory with is_html(self : Self, 
value : JsValue) -> Bool {
  trusted_type_policy_factory_is_html_ffi(TJsValue::to_js(self), TJsValue::to_js(value)).unsafe_cast()
}

/// [TrustedTypePolicyFactory.isScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/isScript)
impl TTrustedTypePolicyFactory with is_script(self : Self, 
value : JsValue) -> Bool {
  trusted_type_policy_factory_is_script_ffi(TJsValue::to_js(self), TJsValue::to_js(value)).unsafe_cast()
}

/// [TrustedTypePolicyFactory.isScriptURL](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/isScriptURL)
impl TTrustedTypePolicyFactory with is_script_url(self : Self, 
value : JsValue) -> Bool {
  trusted_type_policy_factory_is_script_url_ffi(TJsValue::to_js(self), TJsValue::to_js(value)).unsafe_cast()
}

/// [TrustedTypePolicyFactory.emptyHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/emptyHTML)
impl TTrustedTypePolicyFactory with empty_html(self : Self) -> TrustedHTML {
  trusted_type_policy_factory_empty_html_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [TrustedTypePolicyFactory.emptyScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/emptyScript)
impl TTrustedTypePolicyFactory with empty_script(self : Self) -> TrustedScript {
  trusted_type_policy_factory_empty_script_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [TrustedTypePolicyFactory.getAttributeType](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/getAttributeType)
impl TTrustedTypePolicyFactory with get_attribute_type(self : Self, 
tag_name : String, 
attribute : String, 
element_ns? : String = "", 
attr_ns? : String = "") -> String? {
  let result = trusted_type_policy_factory_get_attribute_type_ffi(TJsValue::to_js(self), TJsValue::to_js(tag_name), TJsValue::to_js(attribute), TJsValue::to_js(element_ns), TJsValue::to_js(attr_ns))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [TrustedTypePolicyFactory.getPropertyType](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/getPropertyType)
impl TTrustedTypePolicyFactory with get_property_type(self : Self, 
tag_name : String, 
property : String, 
element_ns? : String = "") -> String? {
  let result = trusted_type_policy_factory_get_property_type_ffi(TJsValue::to_js(self), TJsValue::to_js(tag_name), TJsValue::to_js(property), TJsValue::to_js(element_ns))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [TrustedTypePolicyFactory.defaultPolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/defaultPolicy)
impl TTrustedTypePolicyFactory with default_policy(self : Self) -> TrustedTypePolicy {
  trusted_type_policy_factory_default_policy_ffi(TJsValue::to_js(self)).unsafe_cast()
}