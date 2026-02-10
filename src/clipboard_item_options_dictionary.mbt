// Do not edit. This file is generated.
// MoonBit type: ClipboardItemOptions
// Specifications: clipboard-apis.idl

///|
/// [ClipboardItemOptions](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItemOptions)
#external
pub type ClipboardItemOptions

///|
pub impl TJsValue for ClipboardItemOptions with to_js(
  self : ClipboardItemOptions,
) -> JsValue = "%identity"

///|
pub fn ClipboardItemOptions::new(
  presentation_style? : PresentationStyle = PresentationStyle::Unspecified,
) -> ClipboardItemOptions {
  clipboard_item_options_ffi(TJsValue::to_js(presentation_style))
}

///|
pub fn ClipboardItemOptions::empty() -> ClipboardItemOptions {
  clipboard_item_options_empty_ffi()
}
