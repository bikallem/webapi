///|
fn text_decoder_options_ffi(
  fatal : JsValue,
  ignore_bom : JsValue,
) -> TextDecoderOptions = "webapi_TextDecoderOptions" "new"

///|
fn text_decoder_options_empty_ffi() -> TextDecoderOptions = "webapi_Dictionary" "empty"

///|
fn text_decoder_options_get_fatal_ffi(obj : JsValue) -> JsValue = "webapi_TextDecoderOptions" "get_fatal"

///|
fn text_decoder_options_get_ignore_bom_ffi(obj : JsValue) -> JsValue = "webapi_TextDecoderOptions" "get_ignoreBOM"
