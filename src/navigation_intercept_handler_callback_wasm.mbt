pub fn NavigationInterceptHandler::new(f : () -> JsPromise[Unit]) -> NavigationInterceptHandler {
  let w : () -> JsValue = fn() { TJsValue::to_js(f()) }
  navigation_intercept_handler_ffi(w).unsafe_cast()
}

///|
fn navigation_intercept_handler_ffi(f : () -> JsValue) -> JsValue = "webapi_NavigationInterceptHandler" "new"