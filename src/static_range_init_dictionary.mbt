///|
#external
pub type StaticRangeInit

///|
pub impl TJsValue for StaticRangeInit with to_js(self : StaticRangeInit) -> JsValue = "%identity"

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
pub fn StaticRangeInit::new(
  start_container : &TNode,
  start_offset : UInt,
  end_container : &TNode,
  end_offset : UInt,
) -> StaticRangeInit {
  static_range_init_ffi(
    TJsValue::to_js(start_container),
    TJsValue::to_js(start_offset),
    TJsValue::to_js(end_container),
    TJsValue::to_js(end_offset),
  )
}

///|
extern "js" fn static_range_init_empty_ffi() -> StaticRangeInit = "() => {}"

///|
pub fn StaticRangeInit::empty() -> StaticRangeInit {
  static_range_init_empty_ffi()
}
