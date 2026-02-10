///|
fn text_decoder_options_ffi(
  fatal : JsValue,
  ignore_bom : JsValue,
) -> TextDecoderOptions = "webapi_TextDecoderOptions" "new"

///|
fn text_decoder_options_empty_ffi() -> TextDecoderOptions = "webapi_Dictionary" "empty"
