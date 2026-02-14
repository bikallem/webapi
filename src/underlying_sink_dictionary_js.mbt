///|
extern "js" fn underlying_sink_ffi(
  start : JsValue,
  write : JsValue,
  close : JsValue,
  abort : JsValue,
  type_ : JsValue,
) -> UnderlyingSink =
  #|(start, write, close, abort, type) => {
  #|  const obj = {};
  #|  if (start !== undefined) obj.start = start;
  #|  if (write !== undefined) obj.write = write;
  #|  if (close !== undefined) obj.close = close;
  #|  if (abort !== undefined) obj.abort = abort;
  #|  if (type !== undefined) obj.type = type;
  #|  return obj;
  #|}

///|
extern "js" fn underlying_sink_empty_ffi() -> UnderlyingSink = "() => {}"
