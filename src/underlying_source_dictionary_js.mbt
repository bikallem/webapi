///|
extern "js" fn underlying_source_ffi(
  start : JsValue,
  pull : JsValue,
  cancel : JsValue,
  type_ : JsValue,
  auto_allocate_chunk_size : JsValue,
) -> UnderlyingSource =
  #|(start, pull, cancel, type, autoAllocateChunkSize) => {
  #|  const obj = {};
  #|  if (start !== undefined) obj.start = start;
  #|  if (pull !== undefined) obj.pull = pull;
  #|  if (cancel !== undefined) obj.cancel = cancel;
  #|  if (type !== undefined) obj.type = type;
  #|  if (autoAllocateChunkSize !== undefined) obj.autoAllocateChunkSize = autoAllocateChunkSize;
  #|  return obj;
  #|}

///|
extern "js" fn underlying_source_empty_ffi() -> UnderlyingSource = "() => {}"
