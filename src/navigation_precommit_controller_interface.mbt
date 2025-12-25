// Do not edit. This file is generated.
// MoonBit type: NavigationPrecommitController
// Specifications: html.idl

///|
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
pub trait TNavigationPrecommitController: TJsValue {
  redirect(self : Self, url : String, options? : NavigationNavigateOptions) -> Unit = _
}

///|
extern "js" fn navigation_precommit_controller_redirect_ffi(
  obj : JsValue,
  url : JsValue,
  options : JsValue,
) -> Unit = "(obj, url, options) => obj.redirect(obj, url, options)"

///|
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
