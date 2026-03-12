extern "js" fn readable_stream_read_result_ffi(value: JsValue, done: JsValue) -> ReadableStreamReadResult = 
#|(value, done) => {
#|  const obj = {};
#|  if (value !== undefined) obj.value = value;
#|  if (done !== undefined) obj.done = done;
#|  return obj;
#|}

extern "js" fn readable_stream_read_result_empty_ffi() -> ReadableStreamReadResult = "() => {}"

extern "js" fn readable_stream_read_result_get_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn readable_stream_read_result_get_done_ffi(obj: JsValue) -> JsValue = "(obj) => obj.done"