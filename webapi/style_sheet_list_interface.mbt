// Do not edit. This file is generated.
// MoonBit type: StyleSheetList
// Specifications: cssom.idl

/// [StyleSheetList](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList)
#external
pub type StyleSheetList

pub impl TJsValue for StyleSheetList with to_js(self: StyleSheetList) -> JsValue = "%identity"

pub impl FromJsAny for StyleSheetList with from_js_any(value : JsAny) -> StyleSheetList = "%identity"

pub fn[T: TStyleSheetList] StyleSheetList::into(self : StyleSheetList) -> T = "%identity"

pub impl TStyleSheetList for StyleSheetList

/// [StyleSheetList](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList) interface.
pub trait TStyleSheetList: TJsValue {
  item_opt(self : Self, index : UInt) -> CSSStyleSheet? = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> CSSStyleSheet = _
}

/// [StyleSheetList.item](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList/item)
impl TStyleSheetList with item_opt(self : Self, 
index : UInt) -> CSSStyleSheet? {
  style_sheet_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [StyleSheetList.length](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList/length)
impl TStyleSheetList with length(self : Self) -> UInt {
  style_sheet_list_length_ffi(TJsValue::to_js(self))
}

impl TStyleSheetList with item(self : Self, 
index : UInt) -> CSSStyleSheet {
  self.item_opt(index).unwrap()
}