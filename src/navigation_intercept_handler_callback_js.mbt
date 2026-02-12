///|
extern "js" fn navigation_intercept_handler_ffi(
  callback : () -> JsPromise[Unit],
) -> NavigationInterceptHandler = "(callback) => callback"
