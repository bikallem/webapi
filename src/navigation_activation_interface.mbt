// Do not edit. This file is generated.
// MoonBit type: NavigationActivation
// Specifications: html.idl

///|
/// [NavigationActivation](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation)
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
/// [NavigationActivation](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation) interface.
pub trait TNavigationActivation: TJsValue {
  from(self : Self) -> NavigationHistoryEntry = _
  entry(self : Self) -> NavigationHistoryEntry = _
  navigation_type(self : Self) -> NavigationType = _
}

///|
extern "js" fn navigation_activation_from_ffi(
  obj : JsValue,
) -> NavigationHistoryEntry = "(obj) => obj.from"

///|
/// [NavigationActivation.from](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation/from)
impl TNavigationActivation with from(self : Self) -> NavigationHistoryEntry {
  navigation_activation_from_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_activation_entry_ffi(
  obj : JsValue,
) -> NavigationHistoryEntry = "(obj) => obj.entry"

///|
/// [NavigationActivation.entry](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation/entry)
impl TNavigationActivation with entry(self : Self) -> NavigationHistoryEntry {
  navigation_activation_entry_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_activation_navigation_type_ffi(
  obj : JsValue,
) -> NavigationType = "(obj) => obj.navigationType"

///|
/// [NavigationActivation.navigationType](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation/navigationType)
impl TNavigationActivation with navigation_type(self : Self) -> NavigationType {
  navigation_activation_navigation_type_ffi(TJsValue::to_js(self))
}
