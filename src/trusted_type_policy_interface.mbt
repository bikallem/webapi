// Do not edit. This file is generated.
// MoonBit type: TrustedTypePolicy
// Specifications: trusted-types.idl

///|
/// [TrustedTypePolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy)
#external
pub type TrustedTypePolicy

///|
pub impl TJsValue for TrustedTypePolicy with to_js(self : TrustedTypePolicy) -> JsValue = "%identity"

///|
pub fn[T : TTrustedTypePolicy] TrustedTypePolicy::into(
  self : TrustedTypePolicy,
) -> T = "%identity"

///|
pub impl TTrustedTypePolicy for TrustedTypePolicy

///|
/// [TrustedTypePolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy) interface.
pub trait TTrustedTypePolicy: TJsValue {
  name(self : Self) -> String = _
  create_html(self : Self, input : String, arguments : JsValue) -> TrustedHTML = _
  create_script(self : Self, input : String, arguments : JsValue) -> TrustedScript = _
  create_script_url(self : Self, input : String, arguments : JsValue) -> TrustedScriptURL = _
}

///|
/// [TrustedTypePolicy.name](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/name)
impl TTrustedTypePolicy with name(self : Self) -> String {
  trusted_type_policy_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [TrustedTypePolicy.createHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/createHTML)
impl TTrustedTypePolicy with create_html(
  self : Self,
  input : String,
  arguments : JsValue,
) -> TrustedHTML {
  trusted_type_policy_create_html_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input),
    TJsValue::to_js(arguments),
  ).unsafe_cast()
}

///|
/// [TrustedTypePolicy.createScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/createScript)
impl TTrustedTypePolicy with create_script(
  self : Self,
  input : String,
  arguments : JsValue,
) -> TrustedScript {
  trusted_type_policy_create_script_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input),
    TJsValue::to_js(arguments),
  ).unsafe_cast()
}

///|
/// [TrustedTypePolicy.createScriptURL](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/createScriptURL)
impl TTrustedTypePolicy with create_script_url(
  self : Self,
  input : String,
  arguments : JsValue,
) -> TrustedScriptURL {
  trusted_type_policy_create_script_url_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input),
    TJsValue::to_js(arguments),
  ).unsafe_cast()
}
