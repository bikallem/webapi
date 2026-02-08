// Do not edit. This file is generated.
// MoonBit type: GetHTMLOptions
// Specifications: html.idl

/// [GetHTMLOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetHTMLOptions)
#external
pub type GetHTMLOptions

pub impl TJsValue for GetHTMLOptions with to_js(self: GetHTMLOptions) -> JsValue = "%identity"

pub fn GetHTMLOptions::new(serializable_shadow_roots? : Bool = false, 
shadow_roots? : Array[ShadowRoot] = []) -> GetHTMLOptions {
  get_html_options_ffi(TJsValue::to_js(serializable_shadow_roots), TJsValue::to_js(shadow_roots))
}

pub fn GetHTMLOptions::empty() -> GetHTMLOptions { get_html_options_empty_ffi() }