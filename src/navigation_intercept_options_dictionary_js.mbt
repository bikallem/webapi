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
extern "js" fn navigation_intercept_options_empty_ffi() -> NavigationInterceptOptions = "() => {}"
