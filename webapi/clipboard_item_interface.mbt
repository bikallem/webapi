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
  options? : ClipboardItemOptions,
) -> ClipboardItem {
  clipboard_item_new_ffi(TJsValue::to_js(items), opt_to_js(options))
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

///|
#cfg(target="js")
extern "js" fn clipboard_item_new_ffi(
  items : JsValue,
  options : JsValue,
) -> ClipboardItem = "(items, options) => new ClipboardItem(items, options)"

///|
#cfg(target="js")
extern "js" fn clipboard_item_presentation_style_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.presentationStyle"

///|
#cfg(target="js")
fn clipboard_item_presentation_style_ffi(obj : JsValue) -> PresentationStyle {
  PresentationStyle::from_unchecked(
    clipboard_item_presentation_style_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn clipboard_item_types_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
#cfg(target="js")
fn clipboard_item_types_ffi(obj : JsValue) -> Array[String] {
  clipboard_item_types_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clipboard_item_get_type_ffi_js(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, type_) => obj.getType(type_)"

///|
#cfg(target="js")
fn clipboard_item_get_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> JsPromise[Blob] {
  clipboard_item_get_type_ffi_js(obj, type_).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clipboard_item_supports_ffi_js(type_ : JsValue) -> JsValue = "(type_) => ClipboardItem.supports(type_)"

///|
#cfg(target="js")
fn clipboard_item_supports_ffi(type_ : JsValue) -> Bool {
  clipboard_item_supports_ffi_js(type_).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clipboard_item_new_ffi(items : JsValue, options : JsValue) -> ClipboardItem = "webapi_ClipboardItem" "new"

///|
#cfg(target="wasm-gc")
fn clipboard_item_presentation_style_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ClipboardItem" "get_presentationStyle"

///|
#cfg(target="wasm-gc")
fn clipboard_item_presentation_style_ffi(obj : JsValue) -> PresentationStyle {
  PresentationStyle::from_unchecked(
    jsvalue_to_string(clipboard_item_presentation_style_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn clipboard_item_types_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ClipboardItem" "get_types"

///|
#cfg(target="wasm-gc")
fn clipboard_item_types_ffi(obj : JsValue) -> Array[String] {
  clipboard_item_types_ffi_wasm(obj).to_string_array()
}

///|
#cfg(target="wasm-gc")
fn clipboard_item_get_type_ffi_wasm(obj : JsValue, type_ : JsValue) -> JsValue = "webapi_ClipboardItem" "getType"

///|
#cfg(target="wasm-gc")
fn clipboard_item_get_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> JsPromise[Blob] {
  clipboard_item_get_type_ffi_wasm(obj, type_).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clipboard_item_supports_ffi(type_ : JsValue) -> Bool = "webapi_ClipboardItem" "supports"
