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
pub impl FromJsAny for NavigationUpdateCurrentEntryOptions with from_js_any(
  value : JsAny,
) -> NavigationUpdateCurrentEntryOptions = "%identity"

///|
pub fn NavigationUpdateCurrentEntryOptions::new(
  state : JsValue,
) -> NavigationUpdateCurrentEntryOptions {
  navigation_update_current_entry_options_ffi(TJsValue::to_js(state))
}

///|
pub fn NavigationUpdateCurrentEntryOptions::empty() -> NavigationUpdateCurrentEntryOptions {
  navigation_update_current_entry_options_empty_ffi()
}

///|
pub fn NavigationUpdateCurrentEntryOptions::state(
  self : NavigationUpdateCurrentEntryOptions,
) -> JsValue {
  navigation_update_current_entry_options_get_state_ffi(TJsValue::to_js(self))
}
