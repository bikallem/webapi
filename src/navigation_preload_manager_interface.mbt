// Do not edit. This file is generated.
// MoonBit type: NavigationPreloadManager
// Specifications: service-workers.idl

///|
/// [NavigationPreloadManager](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager)
#external
pub type NavigationPreloadManager

///|
pub impl TJsValue for NavigationPreloadManager with to_js(
  self : NavigationPreloadManager,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationPreloadManager with from_js_any(value : JsAny) -> NavigationPreloadManager = "%identity"

///|
pub fn[T : TNavigationPreloadManager] NavigationPreloadManager::into(
  self : NavigationPreloadManager,
) -> T = "%identity"

///|
pub impl TNavigationPreloadManager for NavigationPreloadManager

///|
/// [NavigationPreloadManager](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager) interface.
pub trait TNavigationPreloadManager: TJsValue {
  enable(self : Self) -> JsPromise[JsValue] = _
  disable(self : Self) -> JsPromise[JsValue] = _
  set_header_value(self : Self, value : String) -> JsPromise[JsValue] = _
  get_state(self : Self) -> JsPromise[NavigationPreloadState] = _
}

///|
/// [NavigationPreloadManager.enable](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager/enable)
impl TNavigationPreloadManager with enable(self : Self) -> JsPromise[JsValue] {
  navigation_preload_manager_enable_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationPreloadManager.disable](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager/disable)
impl TNavigationPreloadManager with disable(self : Self) -> JsPromise[JsValue] {
  navigation_preload_manager_disable_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationPreloadManager.setHeaderValue](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager/setHeaderValue)
impl TNavigationPreloadManager with set_header_value(
  self : Self,
  value : String,
) -> JsPromise[JsValue] {
  navigation_preload_manager_set_header_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [NavigationPreloadManager.getState](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager/getState)
impl TNavigationPreloadManager with get_state(self : Self) -> JsPromise[
  NavigationPreloadState,
] {
  navigation_preload_manager_get_state_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn navigation_preload_manager_enable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.enable()"

///|
#cfg(target="js")
fn navigation_preload_manager_enable_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_enable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_preload_manager_disable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.disable()"

///|
#cfg(target="js")
fn navigation_preload_manager_disable_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_disable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_preload_manager_set_header_value_ffi_js(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.setHeaderValue(value)"

///|
#cfg(target="js")
fn navigation_preload_manager_set_header_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> JsPromise[JsValue] {
  navigation_preload_manager_set_header_value_ffi_js(obj, value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_preload_manager_get_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getState()"

///|
#cfg(target="js")
fn navigation_preload_manager_get_state_ffi(
  obj : JsValue,
) -> JsPromise[NavigationPreloadState] {
  navigation_preload_manager_get_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_enable_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationPreloadManager" "enable"

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_enable_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_enable_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_disable_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationPreloadManager" "disable"

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_disable_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_disable_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_set_header_value_ffi_wasm(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "webapi_NavigationPreloadManager" "setHeaderValue"

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_set_header_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> JsPromise[JsValue] {
  navigation_preload_manager_set_header_value_ffi_wasm(obj, value).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_get_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationPreloadManager" "getState"

///|
#cfg(target="wasm-gc")
fn navigation_preload_manager_get_state_ffi(
  obj : JsValue,
) -> JsPromise[NavigationPreloadState] {
  navigation_preload_manager_get_state_ffi_wasm(obj).unsafe_cast()
}
