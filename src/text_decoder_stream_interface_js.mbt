///|
extern "js" fn text_decoder_stream_new_ffi(
  label : JsValue,
  options : JsValue,
) -> TextDecoderStream = "(label, options) => new TextDecoderStream(label, options)"

///|
extern "js" fn text_decoder_stream_encoding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.encoding"

///|
fn text_decoder_stream_encoding_ffi(obj : JsValue) -> String {
  text_decoder_stream_encoding_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_decoder_stream_fatal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fatal"

///|
fn text_decoder_stream_fatal_ffi(obj : JsValue) -> Bool {
  text_decoder_stream_fatal_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_decoder_stream_ignore_bom_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ignoreBOM"

///|
fn text_decoder_stream_ignore_bom_ffi(obj : JsValue) -> Bool {
  text_decoder_stream_ignore_bom_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_decoder_stream_readable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readable"

///|
fn text_decoder_stream_readable_ffi(obj : JsValue) -> ReadableStream {
  text_decoder_stream_readable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_decoder_stream_writable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.writable"

///|
fn text_decoder_stream_writable_ffi(obj : JsValue) -> WritableStream {
  text_decoder_stream_writable_ffi_js(obj).unsafe_cast()
}
