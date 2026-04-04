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
pub impl FromJsAny for StyleSheet with from_js_any(value : JsAny) -> StyleSheet = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TStyleSheet] StyleSheet::into(self : StyleSheet) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TStyleSheet] StyleSheet::unsafe_into(self : StyleSheet) -> T = "%identity"

///|
pub impl HasConstructor for StyleSheet with constructor_name() {
  "StyleSheet"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TStyleSheet + HasConstructor] StyleSheet::try_into(
  self : StyleSheet,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TStyleSheet for StyleSheet

///|
pub(open) trait TStyleSheetOwnerNode: TJsValue {}

///|
pub impl TStyleSheetOwnerNode for Element

///|
pub impl TStyleSheetOwnerNode for ProcessingInstruction

///|
#external
pub type StyleSheetOwnerNode

///|
pub impl TJsValue for StyleSheetOwnerNode with to_js(self : StyleSheetOwnerNode) -> JsValue = "%identity"

///|
pub impl FromJsAny for StyleSheetOwnerNode with from_js_any(value : JsAny) -> StyleSheetOwnerNode = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TStyleSheetOwnerNode + FromJsAny] StyleSheetOwnerNode::into(
  self : StyleSheetOwnerNode,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TStyleSheetOwnerNode + FromJsAny] StyleSheetOwnerNode::unsafe_into(
  self : StyleSheetOwnerNode,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TStyleSheetOwnerNode] StyleSheetOwnerNode::from(
  value : T,
) -> StyleSheetOwnerNode = "%identity"

///|
pub impl TStyleSheetOwnerNode for StyleSheetOwnerNode

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
/// [StyleSheet.type](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/type)
impl TStyleSheet with type_(self : Self) -> CSSOMString {
  style_sheet_type_ffi(TJsValue::to_js(self))
}

///|
/// [StyleSheet.href](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/href)
impl TStyleSheet with href(self : Self) -> String {
  style_sheet_href_ffi(TJsValue::to_js(self))
}

///|
/// [StyleSheet.ownerNode](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/ownerNode)
impl TStyleSheet with owner_node(self : Self) -> StyleSheetOwnerNode {
  style_sheet_owner_node_ffi(TJsValue::to_js(self))
}

///|
/// [StyleSheet.parentStyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/parentStyleSheet)
impl TStyleSheet with parent_style_sheet(self : Self) -> CSSStyleSheet {
  style_sheet_parent_style_sheet_ffi(TJsValue::to_js(self))
}

///|
/// [StyleSheet.title](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/title)
impl TStyleSheet with title(self : Self) -> String {
  style_sheet_title_ffi(TJsValue::to_js(self))
}

///|
/// [StyleSheet.media](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/media)
impl TStyleSheet with media(self : Self) -> MediaList {
  style_sheet_media_ffi(TJsValue::to_js(self))
}

///|
/// [StyleSheet.disabled](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/disabled)
impl TStyleSheet with disabled(self : Self) -> Bool {
  style_sheet_disabled_ffi(TJsValue::to_js(self))
}

///|
/// [StyleSheet.disabled](https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet/disabled)
impl TStyleSheet with set_disabled(self : Self, disabled : Bool) -> Unit {
  style_sheet_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

///|
#cfg(target="js")
extern "js" fn style_sheet_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn style_sheet_type_ffi(obj : JsValue) -> CSSOMString {
  style_sheet_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn style_sheet_href_ffi(obj : JsValue) -> String {
  style_sheet_href_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_owner_node_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ownerNode"

///|
#cfg(target="js")
fn style_sheet_owner_node_ffi(obj : JsValue) -> StyleSheetOwnerNode {
  style_sheet_owner_node_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_parent_style_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parentStyleSheet"

///|
#cfg(target="js")
fn style_sheet_parent_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  style_sheet_parent_style_sheet_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
#cfg(target="js")
fn style_sheet_title_ffi(obj : JsValue) -> String {
  style_sheet_title_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn style_sheet_media_ffi(obj : JsValue) -> MediaList {
  style_sheet_media_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_disabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn style_sheet_disabled_ffi(obj : JsValue) -> Bool {
  style_sheet_disabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn style_sheet_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
#cfg(target="wasm-gc")
fn style_sheet_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StyleSheet" "get_type"

///|
#cfg(target="wasm-gc")
fn style_sheet_type_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(style_sheet_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn style_sheet_href_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StyleSheet" "get_href"

///|
#cfg(target="wasm-gc")
fn style_sheet_href_ffi(obj : JsValue) -> String {
  jsvalue_to_string(style_sheet_href_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn style_sheet_owner_node_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StyleSheet" "get_ownerNode"

///|
#cfg(target="wasm-gc")
fn style_sheet_owner_node_ffi(obj : JsValue) -> StyleSheetOwnerNode {
  style_sheet_owner_node_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn style_sheet_parent_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_StyleSheet" "get_parentStyleSheet"

///|
#cfg(target="wasm-gc")
fn style_sheet_title_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StyleSheet" "get_title"

///|
#cfg(target="wasm-gc")
fn style_sheet_title_ffi(obj : JsValue) -> String {
  jsvalue_to_string(style_sheet_title_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn style_sheet_media_ffi(obj : JsValue) -> MediaList = "webapi_StyleSheet" "get_media"

///|
#cfg(target="wasm-gc")
fn style_sheet_disabled_ffi(obj : JsValue) -> Bool = "webapi_StyleSheet" "get_disabled"

///|
#cfg(target="wasm-gc")
fn style_sheet_set_disabled_ffi(obj : JsValue, disabled : JsValue) -> Unit = "webapi_StyleSheet" "set_disabled"
