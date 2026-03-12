extern "js" fn underlying_sink_ffi(start: JsValue, write: JsValue, close: JsValue, abort: JsValue, type_: JsValue) -> UnderlyingSink = 
#|(start, write, close, abort, type) => {
#|  const obj = {};
#|  if (start !== undefined) obj.start = start;
#|  if (write !== undefined) obj.write = write;
#|  if (close !== undefined) obj.close = close;
#|  if (abort !== undefined) obj.abort = abort;
#|  if (type !== undefined) obj.type = type;
#|  return obj;
#|}

extern "js" fn underlying_sink_empty_ffi() -> UnderlyingSink = "() => {}"

extern "js" fn underlying_sink_get_start_ffi(obj: JsValue) -> JsValue = "(obj) => obj.start"

extern "js" fn underlying_sink_get_write_ffi(obj: JsValue) -> JsValue = "(obj) => obj.write"

extern "js" fn underlying_sink_get_close_ffi(obj: JsValue) -> JsValue = "(obj) => obj.close"

extern "js" fn underlying_sink_get_abort_ffi(obj: JsValue) -> JsValue = "(obj) => obj.abort"

extern "js" fn underlying_sink_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"