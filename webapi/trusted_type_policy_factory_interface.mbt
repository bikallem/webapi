// Do not edit. This file is generated.
// MoonBit type: TrustedTypePolicyFactory
// Specifications: trusted-types.idl

///|
/// [TrustedTypePolicyFactory](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory)
#external
pub type TrustedTypePolicyFactory

///|
pub impl TJsValue for TrustedTypePolicyFactory with to_js(
  self : TrustedTypePolicyFactory,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrustedTypePolicyFactory with from_js_any(value : JsAny) -> TrustedTypePolicyFactory = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTrustedTypePolicyFactory] TrustedTypePolicyFactory::into(
  self : TrustedTypePolicyFactory,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTrustedTypePolicyFactory] TrustedTypePolicyFactory::unsafe_into(
  self : TrustedTypePolicyFactory,
) -> T = "%identity"

///|
pub impl HasConstructor for TrustedTypePolicyFactory with constructor_name() {
  "TrustedTypePolicyFactory"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTrustedTypePolicyFactory + HasConstructor] TrustedTypePolicyFactory::try_into(
  self : TrustedTypePolicyFactory,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TTrustedTypePolicyFactory for TrustedTypePolicyFactory

///|
/// [TrustedTypePolicyFactory](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory) interface.
pub trait TTrustedTypePolicyFactory: TJsValue {
  create_policy(
    self : Self,
    policy_name : String,
    policy_options? : TrustedTypePolicyOptions,
  ) -> TrustedTypePolicy = _
  is_html(self : Self, value : JsValue) -> Bool = _
  is_script(self : Self, value : JsValue) -> Bool = _
  is_script_url(self : Self, value : JsValue) -> Bool = _
  empty_html(self : Self) -> TrustedHTML = _
  empty_script(self : Self) -> TrustedScript = _
  get_attribute_type(
    self : Self,
    tag_name : String,
    attribute : String,
    element_ns? : String,
    attr_ns? : String,
  ) -> String? = _
  get_property_type(
    self : Self,
    tag_name : String,
    property : String,
    element_ns? : String,
  ) -> String? = _
  default_policy(self : Self) -> TrustedTypePolicy = _
}

///|
/// [TrustedTypePolicyFactory.createPolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/createPolicy)
impl TTrustedTypePolicyFactory with create_policy(
  self : Self,
  policy_name : String,
  policy_options? : TrustedTypePolicyOptions,
) -> TrustedTypePolicy {
  trusted_type_policy_factory_create_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(policy_name),
    opt_to_js(policy_options),
  )
}

///|
/// [TrustedTypePolicyFactory.isHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/isHTML)
impl TTrustedTypePolicyFactory with is_html(self : Self, value : JsValue) -> Bool {
  trusted_type_policy_factory_is_html_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [TrustedTypePolicyFactory.isScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/isScript)
impl TTrustedTypePolicyFactory with is_script(self : Self, value : JsValue) -> Bool {
  trusted_type_policy_factory_is_script_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [TrustedTypePolicyFactory.isScriptURL](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/isScriptURL)
impl TTrustedTypePolicyFactory with is_script_url(self : Self, value : JsValue) -> Bool {
  trusted_type_policy_factory_is_script_url_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [TrustedTypePolicyFactory.emptyHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/emptyHTML)
impl TTrustedTypePolicyFactory with empty_html(self : Self) -> TrustedHTML {
  trusted_type_policy_factory_empty_html_ffi(TJsValue::to_js(self))
}

///|
/// [TrustedTypePolicyFactory.emptyScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/emptyScript)
impl TTrustedTypePolicyFactory with empty_script(self : Self) -> TrustedScript {
  trusted_type_policy_factory_empty_script_ffi(TJsValue::to_js(self))
}

///|
/// [TrustedTypePolicyFactory.getAttributeType](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/getAttributeType)
impl TTrustedTypePolicyFactory with get_attribute_type(
  self : Self,
  tag_name : String,
  attribute : String,
  element_ns? : String,
  attr_ns? : String,
) -> String? {
  trusted_type_policy_factory_get_attribute_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tag_name),
    TJsValue::to_js(attribute),
    opt_to_js(element_ns),
    opt_to_js(attr_ns),
  ).to_option_prim()
}

///|
/// [TrustedTypePolicyFactory.getPropertyType](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/getPropertyType)
impl TTrustedTypePolicyFactory with get_property_type(
  self : Self,
  tag_name : String,
  property : String,
  element_ns? : String,
) -> String? {
  trusted_type_policy_factory_get_property_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tag_name),
    TJsValue::to_js(property),
    opt_to_js(element_ns),
  ).to_option_prim()
}

///|
/// [TrustedTypePolicyFactory.defaultPolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyFactory/defaultPolicy)
impl TTrustedTypePolicyFactory with default_policy(self : Self) -> TrustedTypePolicy {
  trusted_type_policy_factory_default_policy_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_create_policy_ffi_js(
  obj : JsValue,
  policy_name : JsValue,
  policy_options : JsValue,
) -> JsValue = "(obj, policy_name, policy_options) => obj.createPolicy(policy_name, policy_options)"

///|
#cfg(target="js")
fn trusted_type_policy_factory_create_policy_ffi(
  obj : JsValue,
  policy_name : JsValue,
  policy_options : JsValue,
) -> TrustedTypePolicy {
  trusted_type_policy_factory_create_policy_ffi_js(
    obj, policy_name, policy_options,
  ).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_is_html_ffi_js(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.isHTML(value)"

///|
#cfg(target="js")
fn trusted_type_policy_factory_is_html_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool {
  trusted_type_policy_factory_is_html_ffi_js(obj, value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_is_script_ffi_js(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.isScript(value)"

///|
#cfg(target="js")
fn trusted_type_policy_factory_is_script_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool {
  trusted_type_policy_factory_is_script_ffi_js(obj, value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_is_script_url_ffi_js(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.isScriptURL(value)"

///|
#cfg(target="js")
fn trusted_type_policy_factory_is_script_url_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool {
  trusted_type_policy_factory_is_script_url_ffi_js(obj, value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_empty_html_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.emptyHTML"

///|
#cfg(target="js")
fn trusted_type_policy_factory_empty_html_ffi(obj : JsValue) -> TrustedHTML {
  trusted_type_policy_factory_empty_html_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_empty_script_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.emptyScript"

///|
#cfg(target="js")
fn trusted_type_policy_factory_empty_script_ffi(obj : JsValue) -> TrustedScript {
  trusted_type_policy_factory_empty_script_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_get_attribute_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  attribute : JsValue,
  element_ns : JsValue,
  attr_ns : JsValue,
) -> JsValue = "(obj, tag_name, attribute, element_ns, attr_ns) => obj.getAttributeType(tag_name, attribute, element_ns, attr_ns)"

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_get_property_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  property : JsValue,
  element_ns : JsValue,
) -> JsValue = "(obj, tag_name, property, element_ns) => obj.getPropertyType(tag_name, property, element_ns)"

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_factory_default_policy_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.defaultPolicy"

///|
#cfg(target="js")
fn trusted_type_policy_factory_default_policy_ffi(
  obj : JsValue,
) -> TrustedTypePolicy {
  trusted_type_policy_factory_default_policy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_create_policy_ffi(
  obj : JsValue,
  policy_name : JsValue,
  policy_options : JsValue,
) -> TrustedTypePolicy = "webapi_TrustedTypePolicyFactory" "createPolicy"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_is_html_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool = "webapi_TrustedTypePolicyFactory" "isHTML"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_is_script_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool = "webapi_TrustedTypePolicyFactory" "isScript"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_is_script_url_ffi(
  obj : JsValue,
  value : JsValue,
) -> Bool = "webapi_TrustedTypePolicyFactory" "isScriptURL"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_empty_html_ffi(obj : JsValue) -> TrustedHTML = "webapi_TrustedTypePolicyFactory" "get_emptyHTML"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_empty_script_ffi(obj : JsValue) -> TrustedScript = "webapi_TrustedTypePolicyFactory" "get_emptyScript"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_get_attribute_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  attribute : JsValue,
  element_ns : JsValue,
  attr_ns : JsValue,
) -> JsValue = "webapi_TrustedTypePolicyFactory" "getAttributeType"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_get_property_type_ffi(
  obj : JsValue,
  tag_name : JsValue,
  property : JsValue,
  element_ns : JsValue,
) -> JsValue = "webapi_TrustedTypePolicyFactory" "getPropertyType"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_factory_default_policy_ffi(
  obj : JsValue,
) -> TrustedTypePolicy = "webapi_TrustedTypePolicyFactory" "get_defaultPolicy"
