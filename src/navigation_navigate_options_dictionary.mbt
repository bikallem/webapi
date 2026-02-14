// Do not edit. This file is generated.
// MoonBit type: NavigationNavigateOptions
// Specifications: html.idl

///|
/// [NavigationNavigateOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationNavigateOptions)
#external
pub type NavigationNavigateOptions

///|
pub impl TJsValue for NavigationNavigateOptions with to_js(
  self : NavigationNavigateOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationNavigateOptions with from_js_any(value : JsAny) -> NavigationNavigateOptions = "%identity"

///|
pub fn NavigationNavigateOptions::new(
  info? : JsValue,
  state? : JsValue,
  history? : NavigationHistoryBehavior,
) -> NavigationNavigateOptions {
  navigation_navigate_options_ffi(
    opt_to_js(info),
    opt_to_js(state),
    opt_to_js(history),
  )
}

///|
pub fn NavigationNavigateOptions::empty() -> NavigationNavigateOptions {
  navigation_navigate_options_empty_ffi()
}

///|
pub fn NavigationNavigateOptions::info(
  self : NavigationNavigateOptions,
) -> JsValue? {
  let result = navigation_navigate_options_get_info_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigationNavigateOptions::state(
  self : NavigationNavigateOptions,
) -> JsValue? {
  let result = navigation_navigate_options_get_state_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigationNavigateOptions::history(
  self : NavigationNavigateOptions,
) -> NavigationHistoryBehavior? {
  let result = navigation_navigate_options_get_history_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
