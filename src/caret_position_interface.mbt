// Do not edit. This file is generated.
// MoonBit type: CaretPosition
// Specifications: cssom-view.idl

///|
#external
pub type CaretPosition

///|
pub impl TJsValue for CaretPosition with to_js(self : CaretPosition) -> JsValue = "%identity"

///|
pub fn[T : TCaretPosition] CaretPosition::into(self : CaretPosition) -> T = "%identity"

///|
pub impl TCaretPosition for CaretPosition

///|
pub trait TCaretPosition: TJsValue {
  offset_node(self : Self) -> Node = _
  offset(self : Self) -> UInt = _
  get_client_rect(self : Self) -> DOMRect? = _
}

///|
extern "js" fn caret_position_offset_node_ffi(obj : JsValue) -> Node = "(obj) => obj.offsetNode"

///|
impl TCaretPosition with offset_node(self : Self) -> Node {
  caret_position_offset_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn caret_position_offset_ffi(obj : JsValue) -> UInt = "(obj) => obj.offset"

///|
impl TCaretPosition with offset(self : Self) -> UInt {
  caret_position_offset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn caret_position_get_client_rect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getClientRect()"

///|
impl TCaretPosition with get_client_rect(self : Self) -> DOMRect? {
  let result = caret_position_get_client_rect_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
