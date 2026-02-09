///|
fn composition_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
) -> CompositionEventInit = "webapi_CompositionEventInit" "new"

///|
fn composition_event_init_empty_ffi() -> CompositionEventInit = "webapi_Dictionary" "empty"
