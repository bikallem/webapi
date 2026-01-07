// Do not edit. This file is generated.
// MoonBit type: NavigationUpdateCurrentEntryOptions
// Specifications: html.idl

///|
/// [NavigationUpdateCurrentEntryOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationUpdateCurrentEntryOptions)
#external
pub type NavigationUpdateCurrentEntryOptions

///|
pub impl TJsValue for NavigationUpdateCurrentEntryOptions with to_js(
  self : NavigationUpdateCurrentEntryOptions,
) -> JsValue = "%identity"

///|
extern "js" fn navigation_update_current_entry_options_ffi(
  state : JsValue,
) -> NavigationUpdateCurrentEntryOptions =
  #|(state) => {
  #|  const obj = {};
  #|  if (state !== undefined) obj.state = state;
  #|  return obj;
  #|}

///|
pub fn NavigationUpdateCurrentEntryOptions::new(
  state : JsValue,
) -> NavigationUpdateCurrentEntryOptions {
  navigation_update_current_entry_options_ffi(TJsValue::to_js(state))
}

///|
extern "js" fn navigation_update_current_entry_options_empty_ffi() -> NavigationUpdateCurrentEntryOptions = "() => {}"

///|
pub fn NavigationUpdateCurrentEntryOptions::empty() -> NavigationUpdateCurrentEntryOptions {
  navigation_update_current_entry_options_empty_ffi()
}
