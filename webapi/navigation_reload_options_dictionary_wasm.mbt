///|
fn navigation_reload_options_ffi(
  info : JsValue,
  state : JsValue,
) -> NavigationReloadOptions = "webapi_NavigationReloadOptions" "new"

///|
fn navigation_reload_options_empty_ffi() -> NavigationReloadOptions = "webapi_Dictionary" "empty"

///|
fn navigation_reload_options_get_info_ffi(obj : JsValue) -> JsValue = "webapi_NavigationReloadOptions" "get_info"

///|
fn navigation_reload_options_get_state_ffi(obj : JsValue) -> JsValue = "webapi_NavigationReloadOptions" "get_state"
