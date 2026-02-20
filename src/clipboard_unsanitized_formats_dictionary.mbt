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
