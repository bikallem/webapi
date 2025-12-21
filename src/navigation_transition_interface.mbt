///|
#external
pub type NavigationTransition

///|
pub impl TJsValue for NavigationTransition with to_js(
  self : NavigationTransition,
) -> JsValue = "%identity"

///|
pub fn[T : TNavigationTransition] NavigationTransition::into(
  self : NavigationTransition,
) -> T = "%identity"

///|
pub impl TNavigationTransition for NavigationTransition

///|
pub trait TNavigationTransition: TJsValue {}
