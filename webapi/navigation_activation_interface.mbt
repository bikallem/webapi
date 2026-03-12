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
pub impl FromJsAny for NavigationActivation with from_js_any(value : JsAny) -> NavigationActivation = "%identity"

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
/// [NavigationActivation.from](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation/from)
impl TNavigationActivation with from(self : Self) -> NavigationHistoryEntry {
  navigation_activation_from_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationActivation.entry](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation/entry)
impl TNavigationActivation with entry(self : Self) -> NavigationHistoryEntry {
  navigation_activation_entry_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationActivation.navigationType](https://developer.mozilla.org/en-US/docs/Web/API/NavigationActivation/navigationType)
impl TNavigationActivation with navigation_type(self : Self) -> NavigationType {
  navigation_activation_navigation_type_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn navigation_activation_from_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.from"

///|
#cfg(target="js")
fn navigation_activation_from_ffi(obj : JsValue) -> NavigationHistoryEntry {
  navigation_activation_from_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_activation_entry_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.entry"

///|
#cfg(target="js")
fn navigation_activation_entry_ffi(obj : JsValue) -> NavigationHistoryEntry {
  navigation_activation_entry_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_activation_navigation_type_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
#cfg(target="js")
fn navigation_activation_navigation_type_ffi(obj : JsValue) -> NavigationType {
  NavigationType::from_unchecked(
    navigation_activation_navigation_type_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="wasm-gc")
fn navigation_activation_from_ffi(obj : JsValue) -> NavigationHistoryEntry = "webapi_NavigationActivation" "get_from"

///|
#cfg(target="wasm-gc")
fn navigation_activation_entry_ffi(obj : JsValue) -> NavigationHistoryEntry = "webapi_NavigationActivation" "get_entry"

///|
#cfg(target="wasm-gc")
fn navigation_activation_navigation_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationActivation" "get_navigationType"

///|
#cfg(target="wasm-gc")
fn navigation_activation_navigation_type_ffi(obj : JsValue) -> NavigationType {
  NavigationType::from_unchecked(
    jsvalue_to_string(navigation_activation_navigation_type_ffi_wasm(obj)),
  )
}
