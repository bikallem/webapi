///|
extern "js" fn media_query_list_media_ffi(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
extern "js" fn media_query_list_matches_ffi(obj : JsValue) -> JsValue = "(obj) => obj.matches"

///|
extern "js" fn media_query_list_add_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.addListener(callback)"

///|
extern "js" fn media_query_list_remove_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.removeListener(callback)"

///|
extern "js" fn media_query_list_onchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
extern "js" fn media_query_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"
