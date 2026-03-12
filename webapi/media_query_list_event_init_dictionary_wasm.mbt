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

///|
fn media_query_list_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryListEventInit" "get_bubbles"

///|
fn media_query_list_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryListEventInit" "get_cancelable"

///|
fn media_query_list_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryListEventInit" "get_composed"

///|
fn media_query_list_event_init_get_media_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryListEventInit" "get_media"

///|
fn media_query_list_event_init_get_matches_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryListEventInit" "get_matches"
