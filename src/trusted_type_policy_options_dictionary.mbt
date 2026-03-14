// Do not edit. This file is generated.
// MoonBit type: TrustedTypePolicyOptions
// Specifications: trusted-types.idl

/// [TrustedTypePolicyOptions](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicyOptions)
#external
pub type TrustedTypePolicyOptions

pub impl TJsValue for TrustedTypePolicyOptions with to_js(self: TrustedTypePolicyOptions) -> JsValue = "%identity"

pub impl FromJsAny for TrustedTypePolicyOptions with from_js_any(value : JsAny) -> TrustedTypePolicyOptions = "%identity"

pub fn TrustedTypePolicyOptions::new(create_html? : (String, JsValue) -> String, 
create_script? : (String, JsValue) -> String, 
create_script_url? : (String, JsValue) -> String) -> TrustedTypePolicyOptions {
  trusted_type_policy_options_ffi(match create_html {
Some(v) => TJsValue::to_js(create_html_callback_ffi(v))
None => JsValue::undefined()
}, match create_script {
Some(v) => TJsValue::to_js(create_script_callback_ffi(v))
None => JsValue::undefined()
}, match create_script_url {
Some(v) => TJsValue::to_js(create_script_url_callback_ffi(v))
None => JsValue::undefined()
})
}

pub fn TrustedTypePolicyOptions::empty() -> TrustedTypePolicyOptions { trusted_type_policy_options_empty_ffi() }

pub fn TrustedTypePolicyOptions::create_html(self : TrustedTypePolicyOptions) -> CreateHTMLCallback? {
  trusted_type_policy_options_get_create_html_ffi(TJsValue::to_js(self)).to_option()
}

pub fn TrustedTypePolicyOptions::create_script(self : TrustedTypePolicyOptions) -> CreateScriptCallback? {
  trusted_type_policy_options_get_create_script_ffi(TJsValue::to_js(self)).to_option()
}

pub fn TrustedTypePolicyOptions::create_script_url(self : TrustedTypePolicyOptions) -> CreateScriptURLCallback? {
  trusted_type_policy_options_get_create_script_url_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn trusted_type_policy_options_ffi(create_html: JsValue, create_script: JsValue, create_script_url: JsValue) -> TrustedTypePolicyOptions = 
#|(createHTML, createScript, createScriptURL) => {
#|  const obj = {};
#|  if (createHTML !== undefined) obj.createHTML = createHTML;
#|  if (createScript !== undefined) obj.createScript = createScript;
#|  if (createScriptURL !== undefined) obj.createScriptURL = createScriptURL;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn trusted_type_policy_options_empty_ffi() -> TrustedTypePolicyOptions = "() => {}"

#cfg(target="js")
extern "js" fn trusted_type_policy_options_get_create_html_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createHTML"

#cfg(target="js")
extern "js" fn trusted_type_policy_options_get_create_script_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createScript"

#cfg(target="js")
extern "js" fn trusted_type_policy_options_get_create_script_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createScriptURL"

#cfg(target="wasm-gc")
fn trusted_type_policy_options_ffi(create_html: JsValue, create_script: JsValue, create_script_url: JsValue) -> TrustedTypePolicyOptions = "webapi_TrustedTypePolicyOptions" "new"

#cfg(target="wasm-gc")
fn trusted_type_policy_options_empty_ffi() -> TrustedTypePolicyOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn trusted_type_policy_options_get_create_html_ffi(obj: JsValue) -> JsValue = "webapi_TrustedTypePolicyOptions" "get_createHTML"

#cfg(target="wasm-gc")
fn trusted_type_policy_options_get_create_script_ffi(obj: JsValue) -> JsValue = "webapi_TrustedTypePolicyOptions" "get_createScript"

#cfg(target="wasm-gc")
fn trusted_type_policy_options_get_create_script_url_ffi(obj: JsValue) -> JsValue = "webapi_TrustedTypePolicyOptions" "get_createScriptURL"