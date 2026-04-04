// Do not edit. This file is generated.
// MoonBit type: StyleSheetList
// Specifications: cssom.idl

///|
/// [StyleSheetList](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList)
#external
pub type StyleSheetList

///|
pub impl TJsValue for StyleSheetList with to_js(self : StyleSheetList) -> JsValue = "%identity"

///|
pub impl FromJsAny for StyleSheetList with from_js_any(value : JsAny) -> StyleSheetList = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TStyleSheetList] StyleSheetList::into(self : StyleSheetList) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TStyleSheetList] StyleSheetList::unsafe_into(
  self : StyleSheetList,
) -> T = "%identity"

///|
pub impl HasConstructor for StyleSheetList with constructor_name() {
  "StyleSheetList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TStyleSheetList + HasConstructor] StyleSheetList::try_into(
  self : StyleSheetList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TStyleSheetList for StyleSheetList

///|
/// [StyleSheetList](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList) interface.
pub trait TStyleSheetList: TJsValue {
  item_opt(self : Self, index : UInt) -> CSSStyleSheet? = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> CSSStyleSheet = _
}

///|
/// [StyleSheetList.item](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList/item)
impl TStyleSheetList with item_opt(self : Self, index : UInt) -> CSSStyleSheet? {
  style_sheet_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [StyleSheetList.length](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList/length)
impl TStyleSheetList with length(self : Self) -> UInt {
  style_sheet_list_length_ffi(TJsValue::to_js(self))
}

///|
impl TStyleSheetList with item(self : Self, index : UInt) -> CSSStyleSheet {
  self.item_opt(index).unwrap()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_list_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
extern "js" fn style_sheet_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn style_sheet_list_length_ffi(obj : JsValue) -> UInt {
  style_sheet_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn style_sheet_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_StyleSheetList" "item"

///|
#cfg(target="wasm-gc")
fn style_sheet_list_length_ffi(obj : JsValue) -> UInt = "webapi_StyleSheetList" "get_length"
