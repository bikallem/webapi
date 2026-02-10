extern "js" fn text_encoder_stream_new_ffi() -> TextEncoderStream = "() => new TextEncoderStream()"

extern "js" fn text_encoder_stream_encoding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.encoding"

///|
fn text_encoder_stream_encoding_ffi(obj: JsValue) -> String {
  text_encoder_stream_encoding_ffi_js(obj).unsafe_cast()
}