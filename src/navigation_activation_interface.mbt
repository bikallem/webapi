///|
#external
pub type NavigationActivation

///|
pub impl TJsValue for NavigationActivation with to_js(
  self : NavigationActivation,
) -> JsValue = "%identity"

///|
pub fn[T : TNavigationActivation] NavigationActivation::into(
  self : NavigationActivation,
) -> T = "%identity"

///|
pub impl TNavigationActivation for NavigationActivation

///|
pub trait TNavigationActivation: TJsValue {}
