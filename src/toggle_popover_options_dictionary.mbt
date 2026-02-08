// Do not edit. This file is generated.
// MoonBit type: TogglePopoverOptions
// Specifications: html.idl

///|
/// [TogglePopoverOptions](https://developer.mozilla.org/en-US/docs/Web/API/TogglePopoverOptions)
#external
pub type TogglePopoverOptions

///|
pub impl TJsValue for TogglePopoverOptions with to_js(
  self : TogglePopoverOptions,
) -> JsValue = "%identity"

///|
pub fn TogglePopoverOptions::new(
  source? : &THTMLElement,
  force? : Bool,
) -> TogglePopoverOptions {
  toggle_popover_options_ffi(opt_to_js(source), opt_to_js(force))
}

///|
pub fn TogglePopoverOptions::empty() -> TogglePopoverOptions {
  toggle_popover_options_empty_ffi()
}
