///|
fn custom_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  detail : JsValue,
) -> CustomEventInit = "webapi_CustomEventInit" "new"

///|
fn custom_event_init_empty_ffi() -> CustomEventInit = "webapi_Dictionary" "empty"
