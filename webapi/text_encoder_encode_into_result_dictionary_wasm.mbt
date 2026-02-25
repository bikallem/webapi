///|
fn text_encoder_encode_into_result_ffi(
  read : JsValue,
  written : JsValue,
) -> TextEncoderEncodeIntoResult = "webapi_TextEncoderEncodeIntoResult" "new"

///|
fn text_encoder_encode_into_result_empty_ffi() -> TextEncoderEncodeIntoResult = "webapi_Dictionary" "empty"

///|
fn text_encoder_encode_into_result_get_read_ffi(obj : JsValue) -> JsValue = "webapi_TextEncoderEncodeIntoResult" "get_read"

///|
fn text_encoder_encode_into_result_get_written_ffi(obj : JsValue) -> JsValue = "webapi_TextEncoderEncodeIntoResult" "get_written"
