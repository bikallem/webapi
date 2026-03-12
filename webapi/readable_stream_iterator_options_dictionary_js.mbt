///|
extern "js" fn readable_stream_iterator_options_ffi(
  prevent_cancel : JsValue,
) -> ReadableStreamIteratorOptions =
  #|(preventCancel) => {
  #|  const obj = {};
  #|  if (preventCancel !== undefined) obj.preventCancel = preventCancel;
  #|  return obj;
  #|}

///|
extern "js" fn readable_stream_iterator_options_empty_ffi() -> ReadableStreamIteratorOptions = "() => {}"

///|
extern "js" fn readable_stream_iterator_options_get_prevent_cancel_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preventCancel"
