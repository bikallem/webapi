extern "js" fn static_range_init_ffi(start_container: JsValue, start_offset: JsValue, end_container: JsValue, end_offset: JsValue) -> StaticRangeInit = 
#|(startContainer, startOffset, endContainer, endOffset) => {
#|  const obj = {};
#|  if (startContainer !== undefined) obj.startContainer = startContainer;
#|  if (startOffset !== undefined) obj.startOffset = startOffset;
#|  if (endContainer !== undefined) obj.endContainer = endContainer;
#|  if (endOffset !== undefined) obj.endOffset = endOffset;
#|  return obj;
#|}

extern "js" fn static_range_init_empty_ffi() -> StaticRangeInit = "() => {}"

extern "js" fn static_range_init_get_start_container_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startContainer"

///|
fn static_range_init_get_start_container_ffi(obj: JsValue) -> Node {
  static_range_init_get_start_container_ffi_js(obj).unsafe_cast()
}

extern "js" fn static_range_init_get_start_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startOffset"

///|
fn static_range_init_get_start_offset_ffi(obj: JsValue) -> UInt {
  static_range_init_get_start_offset_ffi_js(obj).unsafe_cast()
}

extern "js" fn static_range_init_get_end_container_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.endContainer"

///|
fn static_range_init_get_end_container_ffi(obj: JsValue) -> Node {
  static_range_init_get_end_container_ffi_js(obj).unsafe_cast()
}

extern "js" fn static_range_init_get_end_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.endOffset"

///|
fn static_range_init_get_end_offset_ffi(obj: JsValue) -> UInt {
  static_range_init_get_end_offset_ffi_js(obj).unsafe_cast()
}