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
pub fn cb_navigation_intercept_handler(
  f : () -> JsPromise[Unit],
) -> NavigationInterceptHandler = "webapi_NavigationInterceptHandler" "new"
