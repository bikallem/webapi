///|
fn track_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  track : JsValue,
) -> TrackEventInit = "webapi_TrackEventInit" "new"

///|
fn track_event_init_empty_ffi() -> TrackEventInit = "webapi_Dictionary" "empty"

///|
fn track_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_TrackEventInit" "get_bubbles"

///|
fn track_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_TrackEventInit" "get_cancelable"

///|
fn track_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_TrackEventInit" "get_composed"

///|
fn track_event_init_get_track_ffi(obj : JsValue) -> JsValue = "webapi_TrackEventInit" "get_track"
