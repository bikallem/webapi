///|
fn track_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  track : JsValue,
) -> TrackEventInit = "webapi_TrackEventInit" "new"

///|
fn track_event_init_empty_ffi() -> TrackEventInit = "webapi_Dictionary" "empty"
