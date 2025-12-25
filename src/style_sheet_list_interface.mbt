// Do not edit. This file is generated.
// MoonBit type: StyleSheetList
// Specifications: cssom.idl

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
pub trait TStyleSheetList: TJsValue {
  length(self : Self) -> UInt = _
}

///|
extern "js" fn style_sheet_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TStyleSheetList with length(self : Self) -> UInt {
  style_sheet_list_length_ffi(TJsValue::to_js(self))
}
