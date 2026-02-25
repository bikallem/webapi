///|
fn text_decoder_stream_new_ffi(
  label : JsValue,
  options : JsValue,
) -> TextDecoderStream = "webapi_TextDecoderStream" "new"

///|
fn text_decoder_stream_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextDecoderStream" "get_encoding"

///|
fn text_decoder_stream_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_decoder_stream_encoding_ffi_wasm(obj))
}

///|
fn text_decoder_stream_fatal_ffi(obj : JsValue) -> Bool = "webapi_TextDecoderStream" "get_fatal"

///|
fn text_decoder_stream_ignore_bom_ffi(obj : JsValue) -> Bool = "webapi_TextDecoderStream" "get_ignoreBOM"

///|
fn text_decoder_stream_readable_ffi(obj : JsValue) -> ReadableStream = "webapi_TextDecoderStream" "get_readable"

///|
fn text_decoder_stream_writable_ffi(obj : JsValue) -> WritableStream = "webapi_TextDecoderStream" "get_writable"
