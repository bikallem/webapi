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
  fatal? : Bool,
  ignore_bom? : Bool,
) -> TextDecoderOptions {
  text_decoder_options_ffi(opt_to_js(fatal), opt_to_js(ignore_bom))
}

///|
pub fn TextDecoderOptions::empty() -> TextDecoderOptions {
  text_decoder_options_empty_ffi()
}

///|
pub fn TextDecoderOptions::fatal(self : TextDecoderOptions) -> Bool? {
  let result = text_decoder_options_get_fatal_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TextDecoderOptions::ignore_bom(self : TextDecoderOptions) -> Bool? {
  let result = text_decoder_options_get_ignore_bom_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
