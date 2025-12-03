// Auto-generated MoonBit bindings for NavigationPrecommitHandler callback

// Do not edit manually

//
// WebIDL Callback:
// callback NavigationPrecommitHandler = Promise<undefined> (NavigationPrecommitController controller);

///|
#external
pub type NavigationPrecommitHandler

///|
pub impl TJsValue for NavigationPrecommitHandler with to_js(
  self : NavigationPrecommitHandler,
) -> JsValue = "%identity"

///|
fn navigation_precommit_handler_new_ffi(
  f : (JsValue) -> JsPromise[Unit],
) -> NavigationPrecommitHandler = "webapi_NavigationPrecommitHandler" "new"

///|
pub fn NavigationPrecommitHandler::new(
  f : (JsValue) -> JsPromise[Unit],
) -> NavigationPrecommitHandler {
  navigation_precommit_handler_new_ffi(f)
}
