// Auto-generated MoonBit bindings for NavigationInterceptOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigationInterceptOptions {
//   NavigationPrecommitHandler precommitHandler;
//   NavigationInterceptHandler handler;
//   NavigationFocusReset focusReset;
//   NavigationScrollBehavior scroll;
// };

///|
#external
pub type NavigationInterceptOptions

///|
pub impl TJsValue for NavigationInterceptOptions with to_js(self : NavigationInterceptOptions) -> JsValue = "%identity"

///|
fn navigation_intercept_options_ffi(precommit_handler : JsValue, handler : JsValue, focus_reset : JsValue, scroll : JsValue) -> NavigationInterceptOptions = "webapi_NavigationInterceptOptions" "new"

///|
pub fn NavigationInterceptOptions::new(
  precommit_handler? : JsValue,
  handler? : JsValue,
  focus_reset? : JsValue,
  scroll? : JsValue
) -> NavigationInterceptOptions {
  let precommit_handler_js = opt_to_js(precommit_handler)
  let handler_js = opt_to_js(handler)
  let focus_reset_js = opt_to_js(focus_reset)
  let scroll_js = opt_to_js(scroll)
  navigation_intercept_options_ffi(precommit_handler_js, handler_js, focus_reset_js, scroll_js)
}

///|
pub fn NavigationInterceptOptions::empty() -> NavigationInterceptOptions = "webapi_Dictionary" "empty"