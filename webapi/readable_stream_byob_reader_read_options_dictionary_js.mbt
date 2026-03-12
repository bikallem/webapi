extern "js" fn readable_stream_byob_reader_read_options_ffi(min: JsValue) -> ReadableStreamBYOBReaderReadOptions = 
#|(min) => {
#|  const obj = {};
#|  if (min !== undefined) obj.min = min;
#|  return obj;
#|}

extern "js" fn readable_stream_byob_reader_read_options_empty_ffi() -> ReadableStreamBYOBReaderReadOptions = "() => {}"

extern "js" fn readable_stream_byob_reader_read_options_get_min_ffi(obj: JsValue) -> JsValue = "(obj) => obj.min"