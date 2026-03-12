///|
fn router_condition_ffi(
  url_pattern : JsValue,
  request_method : JsValue,
  request_mode : JsValue,
  request_destination : JsValue,
  running_status : JsValue,
  _or : JsValue,
  not : JsValue,
) -> RouterCondition = "webapi_RouterCondition" "new"

///|
fn router_condition_empty_ffi() -> RouterCondition = "webapi_Dictionary" "empty"

///|
fn router_condition_get_url_pattern_ffi(obj : JsValue) -> JsValue = "webapi_RouterCondition" "get_urlPattern"

///|
fn router_condition_get_request_method_ffi(obj : JsValue) -> JsValue = "webapi_RouterCondition" "get_requestMethod"

///|
fn router_condition_get_request_mode_ffi(obj : JsValue) -> JsValue = "webapi_RouterCondition" "get_requestMode"

///|
fn router_condition_get_request_destination_ffi(obj : JsValue) -> JsValue = "webapi_RouterCondition" "get_requestDestination"

///|
fn router_condition_get_running_status_ffi(obj : JsValue) -> JsValue = "webapi_RouterCondition" "get_runningStatus"

///|
fn router_condition_get__or_ffi(obj : JsValue) -> JsValue = "webapi_RouterCondition" "get__or"

///|
fn router_condition_get_not_ffi(obj : JsValue) -> JsValue = "webapi_RouterCondition" "get_not"
