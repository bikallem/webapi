// Do not edit. This file is generated.
// MoonBit type: TrustedTypePolicyOptions
// Specifications: trusted-types.idl

///|
/// [TrustedTypePolicyOptions](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyOptions)
#external
pub type TrustedTypePolicyOptions

///|
pub impl TJsValue for TrustedTypePolicyOptions with to_js(
  self : TrustedTypePolicyOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrustedTypePolicyOptions with from_js_any(value : JsAny) -> TrustedTypePolicyOptions = "%identity"

///|
pub fn TrustedTypePolicyOptions::new(
  create_html? : (String, JsValue) -> String,
  create_script? : (String, JsValue) -> String,
  create_script_url? : (String, JsValue) -> String,
) -> TrustedTypePolicyOptions {
  trusted_type_policy_options_ffi(
    match create_html {
      Some(v) => TJsValue::to_js(create_html_callback_ffi(v))
      None => JsValue::undefined()
    },
    match create_script {
      Some(v) => TJsValue::to_js(create_script_callback_ffi(v))
      None => JsValue::undefined()
    },
    match create_script_url {
      Some(v) => TJsValue::to_js(create_script_url_callback_ffi(v))
      None => JsValue::undefined()
    },
  )
}

///|
pub fn TrustedTypePolicyOptions::empty() -> TrustedTypePolicyOptions {
  trusted_type_policy_options_empty_ffi()
}

///|
pub fn TrustedTypePolicyOptions::create_html(
  self : TrustedTypePolicyOptions,
) -> CreateHTMLCallback? {
  let result = trusted_type_policy_options_get_create_html_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn TrustedTypePolicyOptions::create_script(
  self : TrustedTypePolicyOptions,
) -> CreateScriptCallback? {
  let result = trusted_type_policy_options_get_create_script_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn TrustedTypePolicyOptions::create_script_url(
  self : TrustedTypePolicyOptions,
) -> CreateScriptURLCallback? {
  let result = trusted_type_policy_options_get_create_script_url_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
