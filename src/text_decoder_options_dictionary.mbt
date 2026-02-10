// Do not edit. This file is generated.
// MoonBit type: TextDecoderOptions
// Specifications: encoding.idl

///|
/// [TextDecoderOptions](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderOptions)
#external
pub type TextDecoderOptions

///|
pub impl TJsValue for TextDecoderOptions with to_js(self : TextDecoderOptions) -> JsValue = "%identity"

///|
pub fn TextDecoderOptions::new(
  fatal? : Bool = false,
  ignore_bom? : Bool = false,
) -> TextDecoderOptions {
  text_decoder_options_ffi(TJsValue::to_js(fatal), TJsValue::to_js(ignore_bom))
}

///|
pub fn TextDecoderOptions::empty() -> TextDecoderOptions {
  text_decoder_options_empty_ffi()
}
