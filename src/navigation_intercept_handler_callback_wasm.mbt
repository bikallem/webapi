///|
fn navigation_intercept_handler_ffi(
  callback : () -> @js_async.Promise[Unit],
) -> NavigationInterceptHandler = "webapi_NavigationInterceptHandler" "new"
