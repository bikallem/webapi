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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCaretPosition] CaretPosition::into(self : CaretPosition) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCaretPosition] CaretPosition::unsafe_into(
  self : CaretPosition,
) -> T = "%identity"

///|
pub impl HasConstructor for CaretPosition with constructor_name() {
  "CaretPosition"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCaretPosition + HasConstructor] CaretPosition::try_into(
  self : CaretPosition,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCaretPosition for CaretPosition

///|
/// [CaretPosition](https://developer.mozilla.org/en-US/docs/Web/API/CaretPosition) interface.
pub trait TCaretPosition: TJsValue {
  offset_node(self : Self) -> Node = _
  offset(self : Self) -> UInt = _
  get_client_rect_opt(self : Self) -> DOMRect? = _
  get_client_rect(self : Self) -> DOMRect = _
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
impl TCaretPosition with get_client_rect_opt(self : Self) -> DOMRect? {
  caret_position_get_client_rect_ffi(TJsValue::to_js(self)).to_option()
}

///|
impl TCaretPosition with get_client_rect(self : Self) -> DOMRect {
  self.get_client_rect_opt().unwrap()
}

///|
#cfg(target="js")
extern "js" fn caret_position_offset_node_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetNode"

///|
#cfg(target="js")
fn caret_position_offset_node_ffi(obj : JsValue) -> Node {
  caret_position_offset_node_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn caret_position_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offset"

///|
#cfg(target="js")
fn caret_position_offset_ffi(obj : JsValue) -> UInt {
  caret_position_offset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn caret_position_get_client_rect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getClientRect()"

///|
#cfg(target="wasm-gc")
fn caret_position_offset_node_ffi(obj : JsValue) -> Node = "webapi_CaretPosition" "get_offsetNode"

///|
#cfg(target="wasm-gc")
fn caret_position_offset_ffi(obj : JsValue) -> UInt = "webapi_CaretPosition" "get_offset"

///|
#cfg(target="wasm-gc")
fn caret_position_get_client_rect_ffi(obj : JsValue) -> JsValue = "webapi_CaretPosition" "getClientRect"
