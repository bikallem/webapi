pub fn NavigationPrecommitHandler::new(f : (NavigationPrecommitController) -> @js_async.Promise[Unit]) -> NavigationPrecommitHandler { navigation_precommit_handler_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn navigation_precommit_handler_ffi(f : JsValue) -> JsValue = "(f) => f"