// Do not edit. This file is generated.
// MoonBit type: NavigationTransition
// Specifications: html.idl

///|
/// [NavigationTransition](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition)
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
/// [NavigationTransition](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition) interface.
pub trait TNavigationTransition: TJsValue {
  navigation_type(self : Self) -> NavigationType = _
  from(self : Self) -> NavigationHistoryEntry = _
  to(self : Self) -> NavigationDestination = _
  committed(self : Self) -> JsPromise[Unit] = _
  finished(self : Self) -> JsPromise[Unit] = _
}

///|
/// [NavigationTransition.navigationType](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition/navigationType)
impl TNavigationTransition with navigation_type(self : Self) -> NavigationType {
  navigation_transition_navigation_type_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationTransition.from](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition/from)
impl TNavigationTransition with from(self : Self) -> NavigationHistoryEntry {
  navigation_transition_from_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationTransition.to](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition/to)
impl TNavigationTransition with to(self : Self) -> NavigationDestination {
  navigation_transition_to_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationTransition.committed](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition/committed)
impl TNavigationTransition with committed(self : Self) -> JsPromise[Unit] {
  navigation_transition_committed_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationTransition.finished](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition/finished)
impl TNavigationTransition with finished(self : Self) -> JsPromise[Unit] {
  navigation_transition_finished_ffi(TJsValue::to_js(self))
}
