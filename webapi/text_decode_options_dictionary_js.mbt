extern "js" fn text_decode_options_ffi(stream: JsValue) -> TextDecodeOptions = 
#|(stream) => {
#|  const obj = {};
#|  if (stream !== undefined) obj.stream = stream;
#|  return obj;
#|}

extern "js" fn text_decode_options_empty_ffi() -> TextDecodeOptions = "() => {}"

extern "js" fn text_decode_options_get_stream_ffi(obj: JsValue) -> JsValue = "(obj) => obj.stream"