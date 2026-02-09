///|
fn page_reveal_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view_transition : JsValue,
) -> PageRevealEventInit = "webapi_PageRevealEventInit" "new"

///|
fn page_reveal_event_init_empty_ffi() -> PageRevealEventInit = "webapi_Dictionary" "empty"
