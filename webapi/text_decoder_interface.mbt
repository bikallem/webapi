// Do not edit. This file is generated.
// MoonBit type: TextDecoder
// Specifications: encoding.idl

///|
/// [TextDecoder](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder)
#external
pub type TextDecoder

///|
pub impl TJsValue for TextDecoder with to_js(self : TextDecoder) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextDecoder with from_js_any(value : JsAny) -> TextDecoder = "%identity"

///|
pub fn[T : TTextDecoder] TextDecoder::into(self : TextDecoder) -> T = "%identity"

///|
pub impl TTextDecoder for TextDecoder

///|
pub fn TextDecoder::new(
  label? : String,
  options? : TextDecoderOptions,
) -> TextDecoder {
  text_decoder_new_ffi(opt_to_js(label), opt_to_js(options))
}

///|
/// [TextDecoder](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder) interface.
pub trait TTextDecoder: TJsValue {
  decode(
    self : Self,
    input? : &TAllowSharedBufferSource,
    options? : TextDecodeOptions,
  ) -> String = _
  encoding(self : Self) -> String = _
  fatal(self : Self) -> Bool = _
  ignore_bom(self : Self) -> Bool = _
}

///|
/// [TextDecoder.decode](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/decode)
impl TTextDecoder with decode(
  self : Self,
  input? : &TAllowSharedBufferSource,
  options? : TextDecodeOptions,
) -> String {
  text_decoder_decode_ffi(
    TJsValue::to_js(self),
    match input {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(options),
  )
}

///|
/// [TextDecoder.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/encoding)
impl TTextDecoder with encoding(self : Self) -> String {
  text_decoder_encoding_ffi(TJsValue::to_js(self))
}

///|
/// [TextDecoder.fatal](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/fatal)
impl TTextDecoder with fatal(self : Self) -> Bool {
  text_decoder_fatal_ffi(TJsValue::to_js(self))
}

///|
/// [TextDecoder.ignoreBOM](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/ignoreBOM)
impl TTextDecoder with ignore_bom(self : Self) -> Bool {
  text_decoder_ignore_bom_ffi(TJsValue::to_js(self))
}
