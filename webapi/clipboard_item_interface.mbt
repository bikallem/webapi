// Do not edit. This file is generated.
// MoonBit type: ClipboardItem
// Specifications: clipboard-apis.idl

///|
/// [ClipboardItem](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItem)
#external
pub type ClipboardItem

///|
pub impl TJsValue for ClipboardItem with to_js(self : ClipboardItem) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClipboardItem with from_js_any(value : JsAny) -> ClipboardItem = "%identity"

///|
pub fn[T : TClipboardItem] ClipboardItem::into(self : ClipboardItem) -> T = "%identity"

///|
pub impl TClipboardItem for ClipboardItem

///|
pub fn ClipboardItem::new(
  items : JsValue,
  options? : ClipboardItemOptions = ClipboardItemOptions::empty(),
) -> ClipboardItem {
  clipboard_item_new_ffi(TJsValue::to_js(items), TJsValue::to_js(options))
}

///|
/// [ClipboardItem](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItem) interface.
pub trait TClipboardItem: TJsValue {
  presentation_style(self : Self) -> PresentationStyle = _
  types(self : Self) -> Array[String] = _
  get_type(self : Self, type_ : String) -> JsPromise[Blob] = _
}

///|
/// [ClipboardItem.presentationStyle](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItem/presentationStyle)
impl TClipboardItem with presentation_style(self : Self) -> PresentationStyle {
  clipboard_item_presentation_style_ffi(TJsValue::to_js(self))
}

///|
/// [ClipboardItem.types](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItem/types)
impl TClipboardItem with types(self : Self) -> Array[String] {
  clipboard_item_types_ffi(TJsValue::to_js(self))
}

///|
/// [ClipboardItem.getType](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItem/getType)
impl TClipboardItem with get_type(self : Self, type_ : String) -> JsPromise[
  Blob,
] {
  clipboard_item_get_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
/// [ClipboardItem.supports](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItem/supports)
pub fn ClipboardItem::supports(type_ : String) -> Bool {
  clipboard_item_supports_ffi(TJsValue::to_js(type_))
}
