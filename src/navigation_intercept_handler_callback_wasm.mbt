///|
fn navigation_intercept_handler_ffi(
  callback : () -> JsPromise[Unit],
) -> NavigationInterceptHandler = "webapi_NavigationInterceptHandler" "new"
