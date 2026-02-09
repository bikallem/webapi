///|
extern "js" fn media_query_list_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
fn media_query_list_media_ffi(obj : JsValue) -> CSSOMString {
  media_query_list_media_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn media_query_list_matches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.matches"

///|
fn media_query_list_matches_ffi(obj : JsValue) -> Bool {
  media_query_list_matches_ffi_js(obj).unsafe_cast()
}

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
extern "js" fn media_query_list_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn media_query_list_onchange_ffi(obj : JsValue) -> EventHandler {
  media_query_list_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn media_query_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"
