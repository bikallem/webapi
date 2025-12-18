// Auto-generated MoonBit bindings for NavigationInterceptOptions dictionary
// Do not edit manually

#external
pub type NavigationInterceptOptions

pub impl TJsValue for NavigationInterceptOptions with to_js(self: NavigationInterceptOptions) -> JsValue = "%identity"


fn navigation_intercept_options_ffi(precommit_handler : JsValue, handler : JsValue, focus_reset : JsValue, scroll : JsValue) -> NavigationInterceptOptions = "webapi_NavigationInterceptOptions" "new"


pub fn NavigationInterceptOptions::new(
  precommit_handler? : NavigationPrecommitHandler,
  handler? : NavigationInterceptHandler,
  focus_reset? : NavigationFocusReset,
  scroll? : NavigationScrollBehavior) -> NavigationInterceptOptions {
    navigation_intercept_options_ffi(
      opt_to_js(precommit_handler)
     ,opt_to_js(handler)
     ,opt_to_js(focus_reset)
     ,opt_to_js(scroll)
    )
}


pub fn NavigationInterceptOptions::empty() -> NavigationInterceptOptions = "webapi_Dictionary" "empty"