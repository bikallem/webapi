// Do not edit. This file is generated.
// MoonBit type: DOMRectList
// Specifications: geometry.idl

///|
/// [DOMRectList](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList)
#external
pub type DOMRectList

///|
pub impl TJsValue for DOMRectList with to_js(self : DOMRectList) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMRectList with from_js_any(value : JsAny) -> DOMRectList = "%identity"

///|
pub fn[T : TDOMRectList] DOMRectList::into(self : DOMRectList) -> T = "%identity"

///|
pub impl TDOMRectList for DOMRectList

///|
/// [DOMRectList](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList) interface.
pub trait TDOMRectList: TJsValue {
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> DOMRect? = _
  item(self : Self, index : UInt) -> DOMRect = _
}

///|
/// [DOMRectList.length](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList/length)
impl TDOMRectList with length(self : Self) -> UInt {
  dom_rect_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [DOMRectList.item](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList/item)
impl TDOMRectList with item_opt(self : Self, index : UInt) -> DOMRect? {
  dom_rect_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
impl TDOMRectList with item(self : Self, index : UInt) -> DOMRect {
  self.item_opt(index).unwrap()
}
