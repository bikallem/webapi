///|
extern "js" fn static_range_init_ffi(
  start_container : JsValue,
  start_offset : JsValue,
  end_container : JsValue,
  end_offset : JsValue,
) -> StaticRangeInit =
  #|(startContainer, startOffset, endContainer, endOffset) => {
  #|  const obj = {};
  #|  if (startContainer !== undefined) obj.startContainer = startContainer;
  #|  if (startOffset !== undefined) obj.startOffset = startOffset;
  #|  if (endContainer !== undefined) obj.endContainer = endContainer;
  #|  if (endOffset !== undefined) obj.endOffset = endOffset;
  #|  return obj;
  #|}

///|
extern "js" fn static_range_init_empty_ffi() -> StaticRangeInit = "() => {}"
