///|
extern "js" fn media_query_list_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MediaQueryListEvent = "(type_, event_init_dict) => new MediaQueryListEvent(type_, event_init_dict)"

///|
extern "js" fn media_query_list_event_media_ffi(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
extern "js" fn media_query_list_event_matches_ffi(obj : JsValue) -> JsValue = "(obj) => obj.matches"
