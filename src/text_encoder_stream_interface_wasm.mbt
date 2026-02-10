///|
fn text_encoder_stream_new_ffi() -> TextEncoderStream = "webapi_TextEncoderStream" "new"

///|
fn text_encoder_stream_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextEncoderStream" "get_encoding"

///|
fn text_encoder_stream_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_encoder_stream_encoding_ffi_wasm(obj))
}
