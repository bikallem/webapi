extern "js" fn text_encoder_encode_into_result_ffi(read: JsValue, written: JsValue) -> TextEncoderEncodeIntoResult = 
#|(read, written) => {
#|  const obj = {};
#|  if (read !== undefined) obj.read = read;
#|  if (written !== undefined) obj.written = written;
#|  return obj;
#|}

extern "js" fn text_encoder_encode_into_result_empty_ffi() -> TextEncoderEncodeIntoResult = "() => {}"