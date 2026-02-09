///|
pub fn NavigationPrecommitHandler::new(
  f : (NavigationPrecommitController) -> @js_async.Promise[Unit],
) -> NavigationPrecommitHandler {
  let w : (JsValue) -> JsValue = fn(a0 : JsValue) {
    TJsValue::to_js(f(a0.unsafe_cast()))
  }
  navigation_precommit_handler_ffi(w).unsafe_cast()
}

///|
fn navigation_precommit_handler_ffi(f : (JsValue) -> JsValue) -> JsValue = "webapi_NavigationPrecommitHandler" "new"
