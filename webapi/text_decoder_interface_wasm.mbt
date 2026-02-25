///|
fn text_decoder_new_ffi(label : JsValue, options : JsValue) -> TextDecoder = "webapi_TextDecoder" "new"

///|
fn text_decoder_decode_ffi_wasm(
  obj : JsValue,
  input : JsValue,
  options : JsValue,
) -> JsValue = "webapi_TextDecoder" "decode"

///|
fn text_decoder_decode_ffi(
  obj : JsValue,
  input : JsValue,
  options : JsValue,
) -> String {
  jsvalue_to_string(text_decoder_decode_ffi_wasm(obj, input, options))
}

///|
fn text_decoder_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextDecoder" "get_encoding"

///|
fn text_decoder_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_decoder_encoding_ffi_wasm(obj))
}

///|
fn text_decoder_fatal_ffi(obj : JsValue) -> Bool = "webapi_TextDecoder" "get_fatal"

///|
fn text_decoder_ignore_bom_ffi(obj : JsValue) -> Bool = "webapi_TextDecoder" "get_ignoreBOM"
