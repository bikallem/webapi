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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TClipboard] Clipboard::into(self : Clipboard) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TClipboard] Clipboard::unsafe_into(self : Clipboard) -> T = "%identity"

///|
pub impl HasConstructor for Clipboard with constructor_name() {
  "Clipboard"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TClipboard + HasConstructor] Clipboard::try_into(
  self : Clipboard,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn clipboard_read_ffi_js(
  obj : JsValue,
  formats : JsValue,
) -> JsValue = "(obj, formats) => obj.read(formats)"

///|
#cfg(target="js")
fn clipboard_read_ffi(
  obj : JsValue,
  formats : JsValue,
) -> JsPromise[ClipboardItems] {
  clipboard_read_ffi_js(obj, formats).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clipboard_read_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readText()"

///|
#cfg(target="js")
fn clipboard_read_text_ffi(obj : JsValue) -> JsPromise[String] {
  clipboard_read_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clipboard_write_ffi_js(obj : JsValue, data : JsValue) -> JsValue = "(obj, data) => obj.write(data)"

///|
#cfg(target="js")
fn clipboard_write_ffi(obj : JsValue, data : JsValue) -> JsPromise[JsValue] {
  clipboard_write_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clipboard_write_text_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.writeText(data)"

///|
#cfg(target="js")
fn clipboard_write_text_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsPromise[JsValue] {
  clipboard_write_text_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clipboard_read_ffi_wasm(obj : JsValue, formats : JsValue) -> JsValue = "webapi_Clipboard" "read"

///|
#cfg(target="wasm-gc")
fn clipboard_read_ffi(
  obj : JsValue,
  formats : JsValue,
) -> JsPromise[ClipboardItems] {
  clipboard_read_ffi_wasm(obj, formats).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clipboard_read_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Clipboard" "readText"

///|
#cfg(target="wasm-gc")
fn clipboard_read_text_ffi(obj : JsValue) -> JsPromise[String] {
  clipboard_read_text_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clipboard_write_ffi_wasm(obj : JsValue, data : JsValue) -> JsValue = "webapi_Clipboard" "write"

///|
#cfg(target="wasm-gc")
fn clipboard_write_ffi(obj : JsValue, data : JsValue) -> JsPromise[JsValue] {
  clipboard_write_ffi_wasm(obj, data).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clipboard_write_text_ffi_wasm(obj : JsValue, data : JsValue) -> JsValue = "webapi_Clipboard" "writeText"

///|
#cfg(target="wasm-gc")
fn clipboard_write_text_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsPromise[JsValue] {
  clipboard_write_text_ffi_wasm(obj, data).unsafe_cast()
}
