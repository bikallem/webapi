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
extern "js" fn toggle_popover_options_ffi(
  source : JsValue,
  force : JsValue,
) -> TogglePopoverOptions =
  #|(source, force) => {
  #|  const obj = {};
  #|  if (source !== undefined) obj.source = source;
  #|  if (force !== undefined) obj.force = force;
  #|  return obj;
  #|}

///|
pub fn TogglePopoverOptions::new(
  source? : &THTMLElement,
  force? : Bool,
) -> TogglePopoverOptions {
  toggle_popover_options_ffi(opt_to_js(source), opt_to_js(force))
}

///|
extern "js" fn toggle_popover_options_empty_ffi() -> TogglePopoverOptions = "() => {}"

///|
pub fn TogglePopoverOptions::empty() -> TogglePopoverOptions {
  toggle_popover_options_empty_ffi()
}
