// Do not edit. This file is generated.
// MoonBit type: FocusOptions
// Specifications: html.idl

///|
/// [FocusOptions](https://developer.mozilla.org/en-US/docs/Web/API/FocusOptions)
#external
pub type FocusOptions

///|
pub impl TJsValue for FocusOptions with to_js(self : FocusOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for FocusOptions with from_js_any(value : JsAny) -> FocusOptions = "%identity"

///|
pub fn FocusOptions::new(
  prevent_scroll? : Bool = false,
  focus_visible? : Bool,
) -> FocusOptions {
  focus_options_ffi(TJsValue::to_js(prevent_scroll), opt_to_js(focus_visible))
}

///|
pub fn FocusOptions::empty() -> FocusOptions {
  focus_options_empty_ffi()
}
