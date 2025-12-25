// Do not edit. This file is generated.
// MoonBit type: FocusOptions
// Specifications: html.idl

///|
#external
pub type FocusOptions

///|
pub impl TJsValue for FocusOptions with to_js(self : FocusOptions) -> JsValue = "%identity"

///|
extern "js" fn focus_options_ffi(
  prevent_scroll : JsValue,
  focus_visible : JsValue,
) -> FocusOptions =
  #|(preventScroll, focusVisible) => {
  #|  const obj = {};
  #|  if (preventScroll !== undefined) obj.preventScroll = preventScroll;
  #|  if (focusVisible !== undefined) obj.focusVisible = focusVisible;
  #|  return obj;
  #|}

///|
pub fn FocusOptions::new(
  prevent_scroll? : Bool = false,
  focus_visible? : Bool,
) -> FocusOptions {
  focus_options_ffi(TJsValue::to_js(prevent_scroll), opt_to_js(focus_visible))
}

///|
extern "js" fn focus_options_empty_ffi() -> FocusOptions = "() => {}"

///|
pub fn FocusOptions::empty() -> FocusOptions {
  focus_options_empty_ffi()
}
