///|
#external
pub type NavigationInterceptHandler

///|
pub impl TJsValue for NavigationInterceptHandler with to_js(
  self : NavigationInterceptHandler,
) -> JsValue = "%identity"

///|
extern "js" fn navigation_intercept_handler_ffi(
  f : () -> JsValue,
) -> NavigationInterceptHandler = "(f) => f"

///|
pub fn NavigationInterceptHandler::new(
  f : () -> JsValue,
) -> NavigationInterceptHandler {
  navigation_intercept_handler_ffi(f)
}
