// Do not edit. This file is generated.
// MoonBit type: NavigationPrecommitHandler
// Specifications: html.idl

///|
/// [NavigationPrecommitHandler](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPrecommitHandler)
#external
pub type NavigationPrecommitHandler

///|
pub impl TJsValue for NavigationPrecommitHandler with to_js(
  self : NavigationPrecommitHandler,
) -> JsValue = "%identity"

///|
extern "js" fn navigation_precommit_handler_ffi(
  f : (NavigationPrecommitController) -> JsPromise[Unit],
) -> NavigationPrecommitHandler = "(f) => f"

///|
pub fn NavigationPrecommitHandler::new(
  f : (NavigationPrecommitController) -> JsPromise[Unit],
) -> NavigationPrecommitHandler {
  navigation_precommit_handler_ffi(f)
}
