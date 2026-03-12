extern "js" fn navigation_intercept_options_ffi(precommit_handler: JsValue, handler: JsValue, focus_reset: JsValue, scroll: JsValue) -> NavigationInterceptOptions = 
#|(precommitHandler, handler, focusReset, scroll) => {
#|  const obj = {};
#|  if (precommitHandler !== undefined) obj.precommitHandler = precommitHandler;
#|  if (handler !== undefined) obj.handler = handler;
#|  if (focusReset !== undefined) obj.focusReset = focusReset;
#|  if (scroll !== undefined) obj.scroll = scroll;
#|  return obj;
#|}

extern "js" fn navigation_intercept_options_empty_ffi() -> NavigationInterceptOptions = "() => {}"

extern "js" fn navigation_intercept_options_get_precommit_handler_ffi(obj: JsValue) -> JsValue = "(obj) => obj.precommitHandler"

extern "js" fn navigation_intercept_options_get_handler_ffi(obj: JsValue) -> JsValue = "(obj) => obj.handler"

extern "js" fn navigation_intercept_options_get_focus_reset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.focusReset"

extern "js" fn navigation_intercept_options_get_scroll_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scroll"