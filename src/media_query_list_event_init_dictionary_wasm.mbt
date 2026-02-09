///|
fn media_query_list_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  media : JsValue,
  matches : JsValue,
) -> MediaQueryListEventInit = "webapi_MediaQueryListEventInit" "new"

///|
fn media_query_list_event_init_empty_ffi() -> MediaQueryListEventInit = "webapi_Dictionary" "empty"
