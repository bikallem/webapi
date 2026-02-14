// Do not edit. This file is generated.
// MoonBit type: NavigationInterceptOptions
// Specifications: html.idl

///|
/// [NavigationInterceptOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationInterceptOptions)
#external
pub type NavigationInterceptOptions

///|
pub impl TJsValue for NavigationInterceptOptions with to_js(
  self : NavigationInterceptOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationInterceptOptions with from_js_any(
  value : JsAny,
) -> NavigationInterceptOptions = "%identity"

///|
pub fn NavigationInterceptOptions::new(
  precommit_handler? : NavigationPrecommitHandler,
  handler? : NavigationInterceptHandler,
  focus_reset? : NavigationFocusReset,
  scroll? : NavigationScrollBehavior,
) -> NavigationInterceptOptions {
  navigation_intercept_options_ffi(
    opt_to_js(precommit_handler),
    opt_to_js(handler),
    opt_to_js(focus_reset),
    opt_to_js(scroll),
  )
}

///|
pub fn NavigationInterceptOptions::empty() -> NavigationInterceptOptions {
  navigation_intercept_options_empty_ffi()
}

///|
pub fn NavigationInterceptOptions::precommit_handler(
  self : NavigationInterceptOptions,
) -> NavigationPrecommitHandler? {
  let result = navigation_intercept_options_get_precommit_handler_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigationInterceptOptions::handler(
  self : NavigationInterceptOptions,
) -> NavigationInterceptHandler? {
  let result = navigation_intercept_options_get_handler_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigationInterceptOptions::focus_reset(
  self : NavigationInterceptOptions,
) -> NavigationFocusReset? {
  let result = navigation_intercept_options_get_focus_reset_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigationInterceptOptions::scroll(
  self : NavigationInterceptOptions,
) -> NavigationScrollBehavior? {
  let result = navigation_intercept_options_get_scroll_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
