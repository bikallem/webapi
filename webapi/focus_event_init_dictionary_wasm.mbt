///|
fn focus_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  related_target : JsValue,
) -> FocusEventInit = "webapi_FocusEventInit" "new"

///|
fn focus_event_init_empty_ffi() -> FocusEventInit = "webapi_Dictionary" "empty"

///|
fn focus_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_bubbles"

///|
fn focus_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_cancelable"

///|
fn focus_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_composed"

///|
fn focus_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_view"

///|
fn focus_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_detail"

///|
fn focus_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_which"

///|
fn focus_event_init_get_related_target_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_relatedTarget"
