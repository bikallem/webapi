///|
fn media_list_media_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MediaList" "get_mediaText"

///|
fn media_list_media_text_ffi(obj : JsValue) -> CSSOMString {
  media_list_media_text_ffi_wasm(obj).unsafe_cast()
}

///|
fn media_list_set_media_text_ffi(obj : JsValue, media_text : JsValue) -> Unit = "webapi_MediaList" "set_mediaText"

///|
fn media_list_length_ffi(obj : JsValue) -> UInt = "webapi_MediaList" "get_length"

///|
fn media_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_MediaList" "item"

///|
fn media_list_append_medium_ffi(obj : JsValue, medium : JsValue) -> Unit = "webapi_MediaList" "appendMedium"

///|
fn media_list_delete_medium_ffi(obj : JsValue, medium : JsValue) -> Unit = "webapi_MediaList" "deleteMedium"
