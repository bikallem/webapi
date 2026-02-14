///|
fn event_listener_options_ffi(capture : JsValue) -> EventListenerOptions = "webapi_EventListenerOptions" "new"

///|
fn event_listener_options_empty_ffi() -> EventListenerOptions = "webapi_Dictionary" "empty"

///|
fn event_listener_options_get_capture_ffi(obj : JsValue) -> JsValue = "webapi_EventListenerOptions" "get_capture"
