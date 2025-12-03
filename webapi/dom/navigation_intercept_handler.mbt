// Auto-generated MoonBit bindings for NavigationInterceptHandler callback

// Do not edit manually

//
// WebIDL Callback:
// callback NavigationInterceptHandler = Promise<undefined> ();

///|
#external
pub type NavigationInterceptHandler

///|
pub impl TJsValue for NavigationInterceptHandler with to_js(
  self : NavigationInterceptHandler,
) -> JsValue = "%identity"

///|
fn navigation_intercept_handler_new_ffi(
  f : () -> JsPromise[Unit],
) -> NavigationInterceptHandler = "webapi_NavigationInterceptHandler" "new"

///|
pub fn NavigationInterceptHandler::new(
  f : () -> JsPromise[Unit],
) -> NavigationInterceptHandler {
  navigation_intercept_handler_new_ffi(f)
}
