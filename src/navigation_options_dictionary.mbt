// Do not edit. This file is generated.
// MoonBit type: NavigationOptions
// Specifications: html.idl

///|
/// [NavigationOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationOptions)
#external
pub type NavigationOptions

///|
pub impl TJsValue for NavigationOptions with to_js(self : NavigationOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationOptions with from_js_any(value : JsAny) -> NavigationOptions = "%identity"

///|
pub fn NavigationOptions::new(info? : JsValue) -> NavigationOptions {
  navigation_options_ffi(opt_to_js(info))
}

///|
pub fn NavigationOptions::empty() -> NavigationOptions {
  navigation_options_empty_ffi()
}
