///|
#external
pub type NavigationNavigateOptions

///|
pub impl TJsValue for NavigationNavigateOptions with to_js(
  self : NavigationNavigateOptions,
) -> JsValue = "%identity"

///|
extern "js" fn navigation_navigate_options_ffi(
  info : JsValue,
  state : JsValue,
  history : JsValue,
) -> NavigationNavigateOptions =
  #|(info, state, history) => {
  #|  const obj = {};
  #|  if (info !== undefined) obj.info = info;
  #|  if (state !== undefined) obj.state = state;
  #|  if (history !== undefined) obj.history = history;
  #|  return obj;
  #|}

///|
pub fn NavigationNavigateOptions::new(
  info? : JsValue,
  state? : JsValue,
  history? : NavigationHistoryBehavior = NavigationHistoryBehavior::Auto,
) -> NavigationNavigateOptions {
  navigation_navigate_options_ffi(
    opt_to_js(info),
    opt_to_js(state),
    TJsValue::to_js(history),
  )
}

///|
extern "js" fn navigation_navigate_options_empty_ffi() -> NavigationNavigateOptions = "() => {}"

///|
pub fn NavigationNavigateOptions::empty() -> NavigationNavigateOptions {
  navigation_navigate_options_empty_ffi()
}
