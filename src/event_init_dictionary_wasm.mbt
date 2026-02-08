///|
fn event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
) -> EventInit = "webapi_EventInit" "new"

///|
fn event_init_empty_ffi() -> EventInit = "webapi_Dictionary" "empty"
