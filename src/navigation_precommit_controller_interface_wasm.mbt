///|
fn navigation_precommit_controller_redirect_ffi(
  obj : JsValue,
  url : JsValue,
  options : JsValue,
) -> Unit = "webapi_NavigationPrecommitController" "redirect"

///|
fn navigation_precommit_controller_add_handler_ffi(
  obj : JsValue,
  handler : JsValue,
) -> Unit = "webapi_NavigationPrecommitController" "addHandler"
