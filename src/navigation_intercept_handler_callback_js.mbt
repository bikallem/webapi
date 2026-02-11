///|
extern "js" fn navigation_intercept_handler_ffi(
  callback : () -> @js_async.Promise[Unit],
) -> NavigationInterceptHandler = "(callback) => callback"
