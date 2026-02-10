// Do not edit. This file is generated.
// MoonBit type: TextDecodeOptions
// Specifications: encoding.idl

///|
/// [TextDecodeOptions](https://developer.mozilla.org/en-US/docs/Web/API/TextDecodeOptions)
#external
pub type TextDecodeOptions

///|
pub impl TJsValue for TextDecodeOptions with to_js(self : TextDecodeOptions) -> JsValue = "%identity"

///|
pub fn TextDecodeOptions::new(stream? : Bool = false) -> TextDecodeOptions {
  text_decode_options_ffi(TJsValue::to_js(stream))
}

///|
pub fn TextDecodeOptions::empty() -> TextDecodeOptions {
  text_decode_options_empty_ffi()
}
