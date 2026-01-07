// Do not edit. This file is generated.
// MoonBit type: ShowPopoverOptions
// Specifications: html.idl

///|
/// [ShowPopoverOptions](https://developer.mozilla.org/en-US/docs/Web/API/ShowPopoverOptions)
#external
pub type ShowPopoverOptions

///|
pub impl TJsValue for ShowPopoverOptions with to_js(self : ShowPopoverOptions) -> JsValue = "%identity"

///|
extern "js" fn show_popover_options_ffi(source : JsValue) -> ShowPopoverOptions =
  #|(source) => {
  #|  const obj = {};
  #|  if (source !== undefined) obj.source = source;
  #|  return obj;
  #|}

///|
pub fn ShowPopoverOptions::new(source? : &THTMLElement) -> ShowPopoverOptions {
  show_popover_options_ffi(opt_to_js(source))
}

///|
extern "js" fn show_popover_options_empty_ffi() -> ShowPopoverOptions = "() => {}"

///|
pub fn ShowPopoverOptions::empty() -> ShowPopoverOptions {
  show_popover_options_empty_ffi()
}
