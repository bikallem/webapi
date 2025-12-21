///|
#external
pub type NavigationInterceptOptions

///|
pub impl TJsValue for NavigationInterceptOptions with to_js(
  self : NavigationInterceptOptions,
) -> JsValue = "%identity"

///|
extern "js" fn navigation_intercept_options_ffi(
  precommit_handler : JsValue,
  handler : JsValue,
  focus_reset : JsValue,
  scroll : JsValue,
) -> NavigationInterceptOptions =
  #|(precommitHandler, handler, focusReset, scroll) => {
  #|  const obj = {};
  #|  if (precommitHandler !== undefined) obj.precommitHandler = precommitHandler;
  #|  if (handler !== undefined) obj.handler = handler;
  #|  if (focusReset !== undefined) obj.focusReset = focusReset;
  #|  if (scroll !== undefined) obj.scroll = scroll;
  #|  return obj;
  #|}

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
extern "js" fn navigation_intercept_options_empty_ffi() -> NavigationInterceptOptions = "() => {}"

///|
pub fn NavigationInterceptOptions::empty() -> NavigationInterceptOptions {
  navigation_intercept_options_empty_ffi()
}
