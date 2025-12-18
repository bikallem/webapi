// Auto-generated MoonBit bindings for NavigationNavigateOptions dictionary
// Do not edit manually

#external
pub type NavigationNavigateOptions

pub impl TJsValue for NavigationNavigateOptions with to_js(self: NavigationNavigateOptions) -> JsValue = "%identity"


fn navigation_navigate_options_ffi(info : JsValue, state : JsValue, history : JsValue) -> NavigationNavigateOptions = "webapi_NavigationNavigateOptions" "new"


pub fn NavigationNavigateOptions::new(
  info? : JsValue,
  state? : JsValue,
  history? : NavigationHistoryBehavior? : NavigationHistoryBehavior = "auto") -> NavigationNavigateOptions {
    navigation_navigate_options_ffi(
      opt_to_js(info)
     ,opt_to_js(state)
     ,TJsValue::to_js(history)
    )
}


pub fn NavigationNavigateOptions::empty() -> NavigationNavigateOptions = "webapi_Dictionary" "empty"