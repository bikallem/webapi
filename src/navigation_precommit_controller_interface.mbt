// Do not edit. This file is generated.
// MoonBit type: NavigationPrecommitController
// Specifications: html.idl

///|
/// [NavigationPrecommitController](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPrecommitController)
#external
pub type NavigationPrecommitController

///|
pub impl TJsValue for NavigationPrecommitController with to_js(
  self : NavigationPrecommitController,
) -> JsValue = "%identity"

///|
pub fn[T : TNavigationPrecommitController] NavigationPrecommitController::into(
  self : NavigationPrecommitController,
) -> T = "%identity"

///|
pub impl TNavigationPrecommitController for NavigationPrecommitController

///|
/// [NavigationPrecommitController](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPrecommitController) interface.
pub trait TNavigationPrecommitController: TJsValue {
  redirect(self : Self, url : String, options? : NavigationNavigateOptions) -> Unit = _
  add_handler(self : Self, handler : NavigationInterceptHandler) -> Unit = _
}

///|
extern "js" fn navigation_precommit_controller_redirect_ffi(
  obj : JsValue,
  url : JsValue,
  options : JsValue,
) -> Unit = "(obj, url, options) => obj.redirect(url, options)"

///|
/// [NavigationPrecommitController.redirect](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPrecommitController/redirect)
impl TNavigationPrecommitController with redirect(
  self : Self,
  url : String,
  options? : NavigationNavigateOptions = NavigationNavigateOptions::empty(),
) -> Unit {
  navigation_precommit_controller_redirect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn navigation_precommit_controller_add_handler_ffi(
  obj : JsValue,
  handler : JsValue,
) -> Unit = "(obj, handler) => obj.addHandler(handler)"

///|
/// [NavigationPrecommitController.addHandler](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPrecommitController/addHandler)
impl TNavigationPrecommitController with add_handler(
  self : Self,
  handler : NavigationInterceptHandler,
) -> Unit {
  navigation_precommit_controller_add_handler_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handler),
  )
}
