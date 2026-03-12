///|
fn navigation_intercept_options_ffi(
  precommit_handler : JsValue,
  handler : JsValue,
  focus_reset : JsValue,
  scroll : JsValue,
) -> NavigationInterceptOptions = "webapi_NavigationInterceptOptions" "new"

///|
fn navigation_intercept_options_empty_ffi() -> NavigationInterceptOptions = "webapi_Dictionary" "empty"

///|
fn navigation_intercept_options_get_precommit_handler_ffi(
  obj : JsValue,
) -> JsValue = "webapi_NavigationInterceptOptions" "get_precommitHandler"

///|
fn navigation_intercept_options_get_handler_ffi(obj : JsValue) -> JsValue = "webapi_NavigationInterceptOptions" "get_handler"

///|
fn navigation_intercept_options_get_focus_reset_ffi(obj : JsValue) -> JsValue = "webapi_NavigationInterceptOptions" "get_focusReset"

///|
fn navigation_intercept_options_get_scroll_ffi(obj : JsValue) -> JsValue = "webapi_NavigationInterceptOptions" "get_scroll"
