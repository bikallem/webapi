///|
fn ui_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
) -> UIEventInit = "webapi_UIEventInit" "new"

///|
fn ui_event_init_empty_ffi() -> UIEventInit = "webapi_Dictionary" "empty"

///|
fn ui_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_UIEventInit" "get_bubbles"

///|
fn ui_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_UIEventInit" "get_cancelable"

///|
fn ui_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_UIEventInit" "get_composed"

///|
fn ui_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_UIEventInit" "get_view"

///|
fn ui_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_UIEventInit" "get_detail"

///|
fn ui_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_UIEventInit" "get_which"
