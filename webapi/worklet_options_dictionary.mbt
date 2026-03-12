// Do not edit. This file is generated.
// MoonBit type: WorkletOptions
// Specifications: html.idl

///|
/// [WorkletOptions](https://developer.mozilla.org/en-US/docs/Web/API/WorkletOptions)
#external
pub type WorkletOptions

///|
pub impl TJsValue for WorkletOptions with to_js(self : WorkletOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for WorkletOptions with from_js_any(value : JsAny) -> WorkletOptions = "%identity"

///|
pub fn WorkletOptions::new(credentials? : RequestCredentials) -> WorkletOptions {
  worklet_options_ffi(opt_to_js(credentials))
}

///|
pub fn WorkletOptions::empty() -> WorkletOptions {
  worklet_options_empty_ffi()
}

///|
pub fn WorkletOptions::credentials(
  self : WorkletOptions,
) -> RequestCredentials? {
  worklet_options_get_credentials_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn worklet_options_ffi(credentials : JsValue) -> WorkletOptions =
  #|(credentials) => {
  #|  const obj = {};
  #|  if (credentials !== undefined) obj.credentials = credentials;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn worklet_options_empty_ffi() -> WorkletOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn worklet_options_get_credentials_ffi(obj : JsValue) -> JsValue = "(obj) => obj.credentials"

///|
#cfg(target="wasm-gc")
fn worklet_options_ffi(credentials : JsValue) -> WorkletOptions = "webapi_WorkletOptions" "new"

///|
#cfg(target="wasm-gc")
fn worklet_options_empty_ffi() -> WorkletOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn worklet_options_get_credentials_ffi(obj : JsValue) -> JsValue = "webapi_WorkletOptions" "get_credentials"
