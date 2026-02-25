///|
extern "js" fn text_encoder_new_ffi() -> TextEncoder = "() => new TextEncoder()"

///|
extern "js" fn text_encoder_encode_ffi_js(
  obj : JsValue,
  input : JsValue,
) -> JsValue = "(obj, input) => obj.encode(input)"

///|
fn text_encoder_encode_ffi(obj : JsValue, input : JsValue) -> Uint8Array {
  text_encoder_encode_ffi_js(obj, input).unsafe_cast()
}

///|
extern "js" fn text_encoder_encode_into_ffi_js(
  obj : JsValue,
  source : JsValue,
  destination : JsValue,
) -> JsValue = "(obj, source, destination) => obj.encodeInto(source, destination)"

///|
fn text_encoder_encode_into_ffi(
  obj : JsValue,
  source : JsValue,
  destination : JsValue,
) -> TextEncoderEncodeIntoResult {
  text_encoder_encode_into_ffi_js(obj, source, destination).unsafe_cast()
}

///|
extern "js" fn text_encoder_encoding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.encoding"

///|
fn text_encoder_encoding_ffi(obj : JsValue) -> String {
  text_encoder_encoding_ffi_js(obj).unsafe_cast()
}
