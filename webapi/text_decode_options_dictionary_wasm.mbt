///|
fn text_decode_options_ffi(stream : JsValue) -> TextDecodeOptions = "webapi_TextDecodeOptions" "new"

///|
fn text_decode_options_empty_ffi() -> TextDecodeOptions = "webapi_Dictionary" "empty"

///|
fn text_decode_options_get_stream_ffi(obj : JsValue) -> JsValue = "webapi_TextDecodeOptions" "get_stream"
