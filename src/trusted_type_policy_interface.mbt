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
extern "js" fn trusted_type_policy_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
/// [TrustedTypePolicy.name](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/name)
impl TTrustedTypePolicy with name(self : Self) -> String {
  trusted_type_policy_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn trusted_type_policy_create_html_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedHTML = "(obj, input, arguments) => obj.createHTML(input, arguments)"

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
  )
}

///|
extern "js" fn trusted_type_policy_create_script_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScript = "(obj, input, arguments) => obj.createScript(input, arguments)"

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
  )
}

///|
extern "js" fn trusted_type_policy_create_script_url_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScriptURL = "(obj, input, arguments) => obj.createScriptURL(input, arguments)"

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
  )
}
