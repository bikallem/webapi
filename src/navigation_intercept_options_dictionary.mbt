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
