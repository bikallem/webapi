///|
extern "js" fn caret_position_offset_node_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetNode"

///|
fn caret_position_offset_node_ffi(obj : JsValue) -> Node {
  caret_position_offset_node_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn caret_position_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offset"

///|
fn caret_position_offset_ffi(obj : JsValue) -> UInt {
  caret_position_offset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn caret_position_get_client_rect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getClientRect()"
