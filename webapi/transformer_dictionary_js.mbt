extern "js" fn transformer_ffi(start: JsValue, transform: JsValue, flush: JsValue, cancel: JsValue, readable_type: JsValue, writable_type: JsValue) -> Transformer = 
#|(start, transform, flush, cancel, readableType, writableType) => {
#|  const obj = {};
#|  if (start !== undefined) obj.start = start;
#|  if (transform !== undefined) obj.transform = transform;
#|  if (flush !== undefined) obj.flush = flush;
#|  if (cancel !== undefined) obj.cancel = cancel;
#|  if (readableType !== undefined) obj.readableType = readableType;
#|  if (writableType !== undefined) obj.writableType = writableType;
#|  return obj;
#|}

extern "js" fn transformer_empty_ffi() -> Transformer = "() => {}"

extern "js" fn transformer_get_start_ffi(obj: JsValue) -> JsValue = "(obj) => obj.start"

extern "js" fn transformer_get_transform_ffi(obj: JsValue) -> JsValue = "(obj) => obj.transform"

extern "js" fn transformer_get_flush_ffi(obj: JsValue) -> JsValue = "(obj) => obj.flush"

extern "js" fn transformer_get_cancel_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancel"

extern "js" fn transformer_get_readable_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.readableType"

extern "js" fn transformer_get_writable_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.writableType"