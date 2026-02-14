///|
fn navigation_intercept_handler_ffi(
  callback : () -> JsPromise[JsValue],
) -> NavigationInterceptHandler = "webapi_NavigationInterceptHandler" "new"
