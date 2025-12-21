///|
#external
pub type StyleSheetList

///|
pub impl TJsValue for StyleSheetList with to_js(self : StyleSheetList) -> JsValue = "%identity"

///|
pub fn[T : TStyleSheetList] StyleSheetList::into(self : StyleSheetList) -> T = "%identity"

///|
pub impl TStyleSheetList for StyleSheetList

///|
pub trait TStyleSheetList: TJsValue {}
