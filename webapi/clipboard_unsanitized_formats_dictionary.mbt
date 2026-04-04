// Do not edit. This file is generated.
// MoonBit type: ClipboardUnsanitizedFormats
// Specifications: clipboard-apis.idl

///|
/// [ClipboardUnsanitizedFormats](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardUnsanitizedFormats)
#external
pub type ClipboardUnsanitizedFormats

///|
pub impl TJsValue for ClipboardUnsanitizedFormats with to_js(
  self : ClipboardUnsanitizedFormats,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClipboardUnsanitizedFormats with from_js_any(
  value : JsAny,
) -> ClipboardUnsanitizedFormats = "%identity"

///|
pub fn ClipboardUnsanitizedFormats::new(
  unsanitized? : Array[String],
) -> ClipboardUnsanitizedFormats {
  clipboard_unsanitized_formats_ffi(opt_to_js(unsanitized))
}

///|
pub fn ClipboardUnsanitizedFormats::empty() -> ClipboardUnsanitizedFormats {
  clipboard_unsanitized_formats_empty_ffi()
}

///|
pub fn ClipboardUnsanitizedFormats::unsanitized(
  self : ClipboardUnsanitizedFormats,
) -> Array[String]? {
  clipboard_unsanitized_formats_get_unsanitized_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn clipboard_unsanitized_formats_ffi(
  unsanitized : JsValue,
) -> ClipboardUnsanitizedFormats =
  #|(unsanitized) => {
  #|  const obj = {};
  #|  if (unsanitized !== undefined) obj.unsanitized = unsanitized;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn clipboard_unsanitized_formats_empty_ffi() -> ClipboardUnsanitizedFormats = "() => {}"

///|
#cfg(target="js")
extern "js" fn clipboard_unsanitized_formats_get_unsanitized_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.unsanitized"

///|
#cfg(target="wasm-gc")
fn clipboard_unsanitized_formats_ffi(
  unsanitized : JsValue,
) -> ClipboardUnsanitizedFormats = "webapi_ClipboardUnsanitizedFormats" "new"

///|
#cfg(target="wasm-gc")
fn clipboard_unsanitized_formats_empty_ffi() -> ClipboardUnsanitizedFormats = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn clipboard_unsanitized_formats_get_unsanitized_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardUnsanitizedFormats" "get_unsanitized"
