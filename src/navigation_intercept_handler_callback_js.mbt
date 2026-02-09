///|
pub fn NavigationInterceptHandler::new(
  f : () -> JsPromise[Unit],
) -> NavigationInterceptHandler {
  navigation_intercept_handler_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn navigation_intercept_handler_ffi(f : JsValue) -> JsValue = "(f) => f"
