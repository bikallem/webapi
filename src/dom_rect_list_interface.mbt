///|
#external
pub type DOMRectList

///|
pub impl TJsValue for DOMRectList with to_js(self : DOMRectList) -> JsValue = "%identity"

///|
pub fn[T : TDOMRectList] DOMRectList::into(self : DOMRectList) -> T = "%identity"

///|
pub impl TDOMRectList for DOMRectList

///|
pub trait TDOMRectList: TJsValue {
  length(self : Self) -> UInt = _
}

///|
extern "js" fn dom_rect_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TDOMRectList with length(self : Self) -> UInt {
  dom_rect_list_length_ffi(TJsValue::to_js(self))
}
