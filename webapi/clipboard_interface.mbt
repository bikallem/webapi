// Do not edit. This file is generated.
// MoonBit type: Clipboard
// Specifications: clipboard-apis.idl

///|
/// [Clipboard](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard)
#external
pub type Clipboard

///|
pub impl TJsValue for Clipboard with to_js(self : Clipboard) -> JsValue = "%identity"

///|
pub impl FromJsAny for Clipboard with from_js_any(value : JsAny) -> Clipboard = "%identity"

///|
pub fn[T : TClipboard] Clipboard::into(self : Clipboard) -> T = "%identity"

///|
pub impl TClipboard for Clipboard

///|
pub impl TEventTarget for Clipboard

///|
/// [Clipboard](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard) interface.
pub trait TClipboard: TEventTarget {
  read(self : Self, formats? : ClipboardUnsanitizedFormats) -> JsPromise[
    ClipboardItems,
  ] = _
  read_text(self : Self) -> JsPromise[String] = _
  write(self : Self, data : ClipboardItems) -> JsPromise[JsValue] = _
  write_text(self : Self, data : String) -> JsPromise[JsValue] = _
}

///|
/// [Clipboard.read](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard/read)
impl TClipboard with read(self : Self, formats? : ClipboardUnsanitizedFormats) -> JsPromise[
  ClipboardItems,
] {
  clipboard_read_ffi(TJsValue::to_js(self), opt_to_js(formats))
}

///|
/// [Clipboard.readText](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard/readText)
impl TClipboard with read_text(self : Self) -> JsPromise[String] {
  clipboard_read_text_ffi(TJsValue::to_js(self))
}

///|
/// [Clipboard.write](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard/write)
impl TClipboard with write(self : Self, data : ClipboardItems) -> JsPromise[
  JsValue,
] {
  clipboard_write_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
/// [Clipboard.writeText](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard/writeText)
impl TClipboard with write_text(self : Self, data : String) -> JsPromise[
  JsValue,
] {
  clipboard_write_text_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}
