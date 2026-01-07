// Do not edit. This file is generated.
// MoonBit type: StyleSheet
// Specifications: cssom.idl

///|
/// [StyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet)
#external
pub type StyleSheet

///|
pub impl TJsValue for StyleSheet with to_js(self : StyleSheet) -> JsValue = "%identity"

///|
pub fn[T : TStyleSheet] StyleSheet::into(self : StyleSheet) -> T = "%identity"

///|
pub impl TStyleSheet for StyleSheet

///|
/// [StyleSheetOwnerNode](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetOwnerNode)
#external
pub type StyleSheetOwnerNode

///|
pub fn[T : TStyleSheetOwnerNode] StyleSheetOwnerNode::into(
  self : StyleSheetOwnerNode,
) -> T = "%identity"

///|
pub impl TStyleSheetOwnerNode for StyleSheetOwnerNode with to_js(
  self : StyleSheetOwnerNode,
) -> JsValue = "%identity"

///|
pub(open) trait TStyleSheetOwnerNode {
  to_js(self : Self) -> JsValue
}

///|
pub impl TStyleSheetOwnerNode for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TStyleSheetOwnerNode for ProcessingInstruction with to_js(
  self : ProcessingInstruction,
) -> JsValue = "%identity"

///|
/// [StyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet) interface.
pub trait TStyleSheet: TJsValue {
  type_(self : Self) -> CSSOMString = _
  href(self : Self) -> String = _
  owner_node(self : Self) -> StyleSheetOwnerNode = _
  parent_style_sheet(self : Self) -> CSSStyleSheet = _
  title(self : Self) -> String = _
  media(self : Self) -> MediaList = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
}

///|
extern "js" fn style_sheet_type_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.type"

///|
/// [StyleSheet.type](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/type)
impl TStyleSheet with type_(self : Self) -> CSSOMString {
  style_sheet_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn style_sheet_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
/// [StyleSheet.href](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/href)
impl TStyleSheet with href(self : Self) -> String {
  style_sheet_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn style_sheet_owner_node_ffi(obj : JsValue) -> StyleSheetOwnerNode = "(obj) => obj.ownerNode"

///|
/// [StyleSheet.ownerNode](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/ownerNode)
impl TStyleSheet with owner_node(self : Self) -> StyleSheetOwnerNode {
  style_sheet_owner_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn style_sheet_parent_style_sheet_ffi(
  obj : JsValue,
) -> CSSStyleSheet = "(obj) => obj.parentStyleSheet"

///|
/// [StyleSheet.parentStyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/parentStyleSheet)
impl TStyleSheet with parent_style_sheet(self : Self) -> CSSStyleSheet {
  style_sheet_parent_style_sheet_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn style_sheet_title_ffi(obj : JsValue) -> String = "(obj) => obj.title"

///|
/// [StyleSheet.title](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/title)
impl TStyleSheet with title(self : Self) -> String {
  style_sheet_title_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn style_sheet_media_ffi(obj : JsValue) -> MediaList = "(obj) => obj.media"

///|
/// [StyleSheet.media](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/media)
impl TStyleSheet with media(self : Self) -> MediaList {
  style_sheet_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn style_sheet_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
/// [StyleSheet.disabled](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/disabled)
impl TStyleSheet with disabled(self : Self) -> Bool {
  style_sheet_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn style_sheet_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
/// [StyleSheet.disabled](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/disabled)
impl TStyleSheet with set_disabled(self : Self, disabled : Bool) -> Unit {
  style_sheet_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}
