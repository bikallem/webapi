///|
#external
pub type NavigationPrecommitHandler

///|
pub impl TJsValue for NavigationPrecommitHandler with to_js(
  self : NavigationPrecommitHandler,
) -> JsValue = "%identity"

///|
extern "js" fn navigation_precommit_handler_ffi(
  f : (NavigationPrecommitController) -> JsValue,
) -> NavigationPrecommitHandler = "(f) => f"

///|
pub fn NavigationPrecommitHandler::new(
  f : (NavigationPrecommitController) -> JsValue,
) -> NavigationPrecommitHandler {
  navigation_precommit_handler_ffi(f)
}
