// Auto-generated MoonBit bindings for NavigationNavigateOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigationNavigateOptions : NavigationOptions {
//   any state;
//   NavigationHistoryBehavior history = "auto";
// };

///|
#external
pub type NavigationNavigateOptions

///|
pub impl TJsValue for NavigationNavigateOptions with to_js(
  self : NavigationNavigateOptions,
) -> JsValue = "%identity"

///|
fn navigation_navigate_options_ffi(
  state : JsValue,
  history : JsValue,
) -> NavigationNavigateOptions = "webapi_NavigationNavigateOptions" "new"

///|
pub fn NavigationNavigateOptions::new(
  state? : JsValue,
  history? : JsValue,
) -> NavigationNavigateOptions {
  let state_js = opt_to_js(state)
  let history_js = opt_to_js(history)
  navigation_navigate_options_ffi(state_js, history_js)
}

///|
pub fn NavigationNavigateOptions::empty() -> NavigationNavigateOptions = "webapi_Dictionary" "empty"
