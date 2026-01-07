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
extern "js" fn trusted_type_policy_options_ffi(
  create_html : JsValue,
  create_script : JsValue,
  create_script_url : JsValue,
) -> TrustedTypePolicyOptions =
  #|(createHTML, createScript, createScriptURL) => {
  #|  const obj = {};
  #|  if (createHTML !== undefined) obj.createHTML = createHTML;
  #|  if (createScript !== undefined) obj.createScript = createScript;
  #|  if (createScriptURL !== undefined) obj.createScriptURL = createScriptURL;
  #|  return obj;
  #|}

///|
pub fn TrustedTypePolicyOptions::new(
  create_html? : CreateHTMLCallback,
  create_script? : CreateScriptCallback,
  create_script_url? : CreateScriptURLCallback,
) -> TrustedTypePolicyOptions {
  trusted_type_policy_options_ffi(
    opt_to_js(create_html),
    opt_to_js(create_script),
    opt_to_js(create_script_url),
  )
}

///|
extern "js" fn trusted_type_policy_options_empty_ffi() -> TrustedTypePolicyOptions = "() => {}"

///|
pub fn TrustedTypePolicyOptions::empty() -> TrustedTypePolicyOptions {
  trusted_type_policy_options_empty_ffi()
}
