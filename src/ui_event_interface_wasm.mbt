///|
fn ui_event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> UIEvent = "webapi_UIEvent" "new"

///|
fn ui_event_view_ffi(obj : JsValue) -> Window = "webapi_UIEvent" "get_view"

///|
fn ui_event_detail_ffi(obj : JsValue) -> Int = "webapi_UIEvent" "get_detail"

///|
fn ui_event_init_ui_event_ffi(
  obj : JsValue,
  type_arg : JsValue,
  bubbles_arg : JsValue,
  cancelable_arg : JsValue,
  view_arg : JsValue,
  detail_arg : JsValue,
) -> Unit = "webapi_UIEvent" "initUIEvent"

///|
fn ui_event_which_ffi(obj : JsValue) -> UInt = "webapi_UIEvent" "get_which"
