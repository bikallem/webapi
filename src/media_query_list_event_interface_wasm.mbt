///|
fn media_query_list_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MediaQueryListEvent = "webapi_MediaQueryListEvent" "new"

///|
fn media_query_list_event_media_ffi(obj : JsValue) -> CSSOMString = "webapi_MediaQueryListEvent" "get_media"

///|
fn media_query_list_event_matches_ffi(obj : JsValue) -> Bool = "webapi_MediaQueryListEvent" "get_matches"
