// Do not edit. This file is generated.
// MoonBit type: CaretPosition
// Specifications: cssom-view.idl

///|
/// [CaretPosition](https://developer.mozilla.org/en-US/docs/Web/API/CaretPosition)
#external
pub type CaretPosition

///|
pub impl TJsValue for CaretPosition with to_js(self : CaretPosition) -> JsValue = "%identity"

///|
pub impl FromJsAny for CaretPosition with from_js_any(value : JsAny) -> CaretPosition = "%identity"

///|
pub fn[T : TCaretPosition] CaretPosition::into(self : CaretPosition) -> T = "%identity"

///|
pub impl TCaretPosition for CaretPosition

///|
/// [CaretPosition](https://developer.mozilla.org/en-US/docs/Web/API/CaretPosition) interface.
pub trait TCaretPosition: TJsValue {
  offset_node(self : Self) -> Node = _
  offset(self : Self) -> UInt = _
  get_client_rect(self : Self) -> DOMRect? = _
}

///|
/// [CaretPosition.offsetNode](https://developer.mozilla.org/en-US/docs/Web/API/CaretPosition/offsetNode)
impl TCaretPosition with offset_node(self : Self) -> Node {
  caret_position_offset_node_ffi(TJsValue::to_js(self))
}

///|
/// [CaretPosition.offset](https://developer.mozilla.org/en-US/docs/Web/API/CaretPosition/offset)
impl TCaretPosition with offset(self : Self) -> UInt {
  caret_position_offset_ffi(TJsValue::to_js(self))
}

///|
/// [CaretPosition.getClientRect](https://developer.mozilla.org/en-US/docs/Web/API/CaretPosition/getClientRect)
impl TCaretPosition with get_client_rect(self : Self) -> DOMRect? {
  caret_position_get_client_rect_ffi(TJsValue::to_js(self)).to_option()
}
