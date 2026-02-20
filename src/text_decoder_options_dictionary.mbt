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
pub impl FromJsAny for TextDecoderOptions with from_js_any(value : JsAny) -> TextDecoderOptions = "%identity"

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

///|
pub fn TextDecoderOptions::fatal(self : TextDecoderOptions) -> Bool? {
  text_decoder_options_get_fatal_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TextDecoderOptions::ignore_bom(self : TextDecoderOptions) -> Bool? {
  text_decoder_options_get_ignore_bom_ffi(TJsValue::to_js(self)).to_option_prim()
}
