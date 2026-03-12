///|
extern "js" fn navigation_preload_manager_enable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.enable()"

///|
fn navigation_preload_manager_enable_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_enable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_preload_manager_disable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.disable()"

///|
fn navigation_preload_manager_disable_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_preload_manager_disable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_preload_manager_set_header_value_ffi_js(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.setHeaderValue(value)"

///|
fn navigation_preload_manager_set_header_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> JsPromise[JsValue] {
  navigation_preload_manager_set_header_value_ffi_js(obj, value).unsafe_cast()
}

///|
extern "js" fn navigation_preload_manager_get_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getState()"

///|
fn navigation_preload_manager_get_state_ffi(
  obj : JsValue,
) -> JsPromise[NavigationPreloadState] {
  navigation_preload_manager_get_state_ffi_js(obj).unsafe_cast()
}
