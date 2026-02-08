///|
fn media_query_list_media_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryList" "get_media"

///|
fn media_query_list_matches_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryList" "get_matches"

///|
fn media_query_list_add_listener_ffi(obj : JsValue, callback : JsValue) -> Unit = "webapi_MediaQueryList" "addListener"

///|
fn media_query_list_remove_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "webapi_MediaQueryList" "removeListener"

///|
fn media_query_list_onchange_ffi(obj : JsValue) -> JsValue = "webapi_MediaQueryList" "get_onchange"

///|
fn media_query_list_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_MediaQueryList" "set_onchange"
