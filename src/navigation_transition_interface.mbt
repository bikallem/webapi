// Do not edit. This file is generated.
// MoonBit type: NavigationTransition
// Specifications: html.idl

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
pub trait TNavigationTransition: TJsValue {
  navigation_type(self : Self) -> NavigationType = _
  from(self : Self) -> NavigationHistoryEntry = _
  committed(self : Self) -> JsPromise[Unit] = _
  finished(self : Self) -> JsPromise[Unit] = _
}

///|
extern "js" fn navigation_transition_navigation_type_ffi(
  obj : JsValue,
) -> NavigationType = "(obj) => obj.navigationType"

///|
impl TNavigationTransition with navigation_type(self : Self) -> NavigationType {
  navigation_transition_navigation_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_transition_from_ffi(
  obj : JsValue,
) -> NavigationHistoryEntry = "(obj) => obj.from"

///|
impl TNavigationTransition with from(self : Self) -> NavigationHistoryEntry {
  navigation_transition_from_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_transition_committed_ffi(
  obj : JsValue,
) -> JsPromise[Unit] = "(obj) => obj.committed"

///|
impl TNavigationTransition with committed(self : Self) -> JsPromise[Unit] {
  navigation_transition_committed_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_transition_finished_ffi(
  obj : JsValue,
) -> JsPromise[Unit] = "(obj) => obj.finished"

///|
impl TNavigationTransition with finished(self : Self) -> JsPromise[Unit] {
  navigation_transition_finished_ffi(TJsValue::to_js(self))
}
