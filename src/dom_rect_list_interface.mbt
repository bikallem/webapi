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
pub trait TDOMRectList: TJsValue {}
