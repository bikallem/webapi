pub fn NavigationPrecommitHandler::new(f : (NavigationPrecommitController) -> JsPromise[Unit]) -> NavigationPrecommitHandler { navigation_precommit_handler_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn navigation_precommit_handler_ffi(f : JsValue) -> JsValue = "(f) => f"