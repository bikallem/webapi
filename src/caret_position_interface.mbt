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
  get_client_rect(self : Self) -> DOMRect = _
}

///|
extern "js" fn caret_position_get_client_rect_ffi(obj : JsValue) -> DOMRect = "(obj) => obj.getClientRect(obj)"

///|
impl TCaretPosition with get_client_rect(self : Self) -> DOMRect {
  caret_position_get_client_rect_ffi(TJsValue::to_js(self))
}
