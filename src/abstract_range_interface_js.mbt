///|
extern "js" fn abstract_range_start_container_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.startContainer"

///|
fn abstract_range_start_container_ffi(obj : JsValue) -> Node {
  abstract_range_start_container_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abstract_range_start_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.startOffset"

///|
fn abstract_range_start_offset_ffi(obj : JsValue) -> UInt {
  abstract_range_start_offset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abstract_range_end_container_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.endContainer"

///|
fn abstract_range_end_container_ffi(obj : JsValue) -> Node {
  abstract_range_end_container_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abstract_range_end_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.endOffset"

///|
fn abstract_range_end_offset_ffi(obj : JsValue) -> UInt {
  abstract_range_end_offset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abstract_range_collapsed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.collapsed"

///|
fn abstract_range_collapsed_ffi(obj : JsValue) -> Bool {
  abstract_range_collapsed_ffi_js(obj).unsafe_cast()
}
