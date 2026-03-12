///|
fn navigation_preload_state_ffi(
  enabled : JsValue,
  header_value : JsValue,
) -> NavigationPreloadState = "webapi_NavigationPreloadState" "new"

///|
fn navigation_preload_state_empty_ffi() -> NavigationPreloadState = "webapi_Dictionary" "empty"

///|
fn navigation_preload_state_get_enabled_ffi(obj : JsValue) -> JsValue = "webapi_NavigationPreloadState" "get_enabled"

///|
fn navigation_preload_state_get_header_value_ffi(obj : JsValue) -> JsValue = "webapi_NavigationPreloadState" "get_headerValue"
