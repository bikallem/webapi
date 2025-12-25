// Do not edit. This file is generated.
// MoonBit type: WorkletOptions
// Specifications: html.idl

///|
#external
pub type WorkletOptions

///|
pub impl TJsValue for WorkletOptions with to_js(self : WorkletOptions) -> JsValue = "%identity"

///|
extern "js" fn worklet_options_ffi(credentials : JsValue) -> WorkletOptions =
  #|(credentials) => {
  #|  const obj = {};
  #|  if (credentials !== undefined) obj.credentials = credentials;
  #|  return obj;
  #|}

///|
pub fn WorkletOptions::new(
  credentials? : RequestCredentials = "same-origin",
) -> WorkletOptions {
  worklet_options_ffi(TJsValue::to_js(credentials))
}

///|
extern "js" fn worklet_options_empty_ffi() -> WorkletOptions = "() => {}"

///|
pub fn WorkletOptions::empty() -> WorkletOptions {
  worklet_options_empty_ffi()
}
