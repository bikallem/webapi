///|
extern "js" fn readable_stream_get_reader_options_ffi(
  mode : JsValue,
) -> ReadableStreamGetReaderOptions =
  #|(mode) => {
  #|  const obj = {};
  #|  if (mode !== undefined) obj.mode = mode;
  #|  return obj;
  #|}

///|
extern "js" fn readable_stream_get_reader_options_empty_ffi() -> ReadableStreamGetReaderOptions = "() => {}"

///|
extern "js" fn readable_stream_get_reader_options_get_mode_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.mode"
