// Do not edit. This file is generated.
// MoonBit type: StyleSheetList
// Specifications: cssom.idl

/// [StyleSheetList](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList)
#external
pub type StyleSheetList

pub impl TJsValue for StyleSheetList with to_js(self: StyleSheetList) -> JsValue = "%identity"

pub fn[T: TStyleSheetList] StyleSheetList::into(self : StyleSheetList) -> T = "%identity"

pub impl TStyleSheetList for StyleSheetList

/// [StyleSheetList](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList) interface.
pub trait TStyleSheetList: TJsValue {
  item(self : Self, index : UInt) -> CSSStyleSheet? = _
  length(self : Self) -> UInt = _
}

/// [StyleSheetList.item](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList/item)
impl TStyleSheetList with item(self : Self, 
index : UInt) -> CSSStyleSheet? {
  let result = style_sheet_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [StyleSheetList.length](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList/length)
impl TStyleSheetList with length(self : Self) -> UInt {
  style_sheet_list_length_ffi(TJsValue::to_js(self))
}