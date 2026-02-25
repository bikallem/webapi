///|
fn add_event_listener_options_ffi(
  capture : JsValue,
  passive : JsValue,
  once : JsValue,
  signal : JsValue,
) -> AddEventListenerOptions = "webapi_AddEventListenerOptions" "new"

///|
fn add_event_listener_options_empty_ffi() -> AddEventListenerOptions = "webapi_Dictionary" "empty"

///|
fn add_event_listener_options_get_capture_ffi(obj : JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_capture"

///|
fn add_event_listener_options_get_passive_ffi(obj : JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_passive"

///|
fn add_event_listener_options_get_once_ffi(obj : JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_once"

///|
fn add_event_listener_options_get_signal_ffi(obj : JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_signal"
