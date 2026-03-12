///|
fn text_encoder_new_ffi() -> TextEncoder = "webapi_TextEncoder" "new"

///|
fn text_encoder_encode_ffi(obj : JsValue, input : JsValue) -> Uint8Array = "webapi_TextEncoder" "encode"

///|
fn text_encoder_encode_into_ffi(
  obj : JsValue,
  source : JsValue,
  destination : JsValue,
) -> TextEncoderEncodeIntoResult = "webapi_TextEncoder" "encodeInto"

///|
fn text_encoder_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextEncoder" "get_encoding"

///|
fn text_encoder_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_encoder_encoding_ffi_wasm(obj))
}
