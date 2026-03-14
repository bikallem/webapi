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
pub impl FromJsAny for NavigationTransition with from_js_any(value : JsAny) -> NavigationTransition = "%identity"

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
  committed(self : Self) -> JsPromise[JsValue] = _
  finished(self : Self) -> JsPromise[JsValue] = _
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
impl TNavigationTransition with committed(self : Self) -> JsPromise[JsValue] {
  navigation_transition_committed_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationTransition.finished](https://developer.mozilla.org/en-US/docs/Web/API/NavigationTransition/finished)
impl TNavigationTransition with finished(self : Self) -> JsPromise[JsValue] {
  navigation_transition_finished_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn navigation_transition_navigation_type_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
#cfg(target="js")
fn navigation_transition_navigation_type_ffi(obj : JsValue) -> NavigationType {
  NavigationType::from_unchecked(
    navigation_transition_navigation_type_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn navigation_transition_from_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.from"

///|
#cfg(target="js")
fn navigation_transition_from_ffi(obj : JsValue) -> NavigationHistoryEntry {
  navigation_transition_from_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_transition_to_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.to"

///|
#cfg(target="js")
fn navigation_transition_to_ffi(obj : JsValue) -> NavigationDestination {
  navigation_transition_to_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_transition_committed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.committed"

///|
#cfg(target="js")
fn navigation_transition_committed_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_transition_committed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_transition_finished_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.finished"

///|
#cfg(target="js")
fn navigation_transition_finished_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_transition_finished_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_transition_navigation_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationTransition" "get_navigationType"

///|
#cfg(target="wasm-gc")
fn navigation_transition_navigation_type_ffi(obj : JsValue) -> NavigationType {
  NavigationType::from_unchecked(
    jsvalue_to_string(navigation_transition_navigation_type_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn navigation_transition_from_ffi(obj : JsValue) -> NavigationHistoryEntry = "webapi_NavigationTransition" "get_from"

///|
#cfg(target="wasm-gc")
fn navigation_transition_to_ffi(obj : JsValue) -> NavigationDestination = "webapi_NavigationTransition" "get_to"

///|
#cfg(target="wasm-gc")
fn navigation_transition_committed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationTransition" "get_committed"

///|
#cfg(target="wasm-gc")
fn navigation_transition_committed_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_transition_committed_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_transition_finished_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationTransition" "get_finished"

///|
#cfg(target="wasm-gc")
fn navigation_transition_finished_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_transition_finished_ffi_wasm(obj).unsafe_cast()
}
