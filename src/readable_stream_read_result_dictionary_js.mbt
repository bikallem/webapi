///|
extern "js" fn readable_stream_read_result_ffi(
  value : JsValue,
  done : JsValue,
) -> ReadableStreamReadResult =
  #|(value, done) => {
  #|  const obj = {};
  #|  if (value !== undefined) obj.value = value;
  #|  if (done !== undefined) obj.done = done;
  #|  return obj;
  #|}

///|
extern "js" fn readable_stream_read_result_empty_ffi() -> ReadableStreamReadResult = "() => {}"
