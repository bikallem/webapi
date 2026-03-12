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
