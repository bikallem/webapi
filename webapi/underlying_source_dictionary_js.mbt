extern "js" fn underlying_source_ffi(start: JsValue, pull: JsValue, cancel: JsValue, type_: JsValue, auto_allocate_chunk_size: JsValue) -> UnderlyingSource = 
#|(start, pull, cancel, type, autoAllocateChunkSize) => {
#|  const obj = {};
#|  if (start !== undefined) obj.start = start;
#|  if (pull !== undefined) obj.pull = pull;
#|  if (cancel !== undefined) obj.cancel = cancel;
#|  if (type !== undefined) obj.type = type;
#|  if (autoAllocateChunkSize !== undefined) obj.autoAllocateChunkSize = autoAllocateChunkSize;
#|  return obj;
#|}

extern "js" fn underlying_source_empty_ffi() -> UnderlyingSource = "() => {}"

extern "js" fn underlying_source_get_start_ffi(obj: JsValue) -> JsValue = "(obj) => obj.start"

extern "js" fn underlying_source_get_pull_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pull"

extern "js" fn underlying_source_get_cancel_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancel"

extern "js" fn underlying_source_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn underlying_source_get_auto_allocate_chunk_size_ffi(obj: JsValue) -> JsValue = "(obj) => obj.autoAllocateChunkSize"