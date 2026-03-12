fn navigation_preload_manager_enable_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationPreloadManager" "enable"

///|
fn navigation_preload_manager_enable_ffi(obj: JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_enable_ffi_wasm(obj).unsafe_cast()
}

fn navigation_preload_manager_disable_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationPreloadManager" "disable"

///|
fn navigation_preload_manager_disable_ffi(obj: JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_disable_ffi_wasm(obj).unsafe_cast()
}

fn navigation_preload_manager_set_header_value_ffi_wasm(obj: JsValue, value: JsValue) -> JsValue = "webapi_NavigationPreloadManager" "setHeaderValue"

///|
fn navigation_preload_manager_set_header_value_ffi(obj: JsValue, value: JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_set_header_value_ffi_wasm(obj, value).unsafe_cast()
}

fn navigation_preload_manager_get_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationPreloadManager" "getState"

///|
fn navigation_preload_manager_get_state_ffi(obj: JsValue) -> JsPromise[NavigationPreloadState] {
  navigation_preload_manager_get_state_ffi_wasm(obj).unsafe_cast()
}