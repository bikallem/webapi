// Do not edit. This file is generated.
// MoonBit type: TextEncoder
// Specifications: encoding.idl

///|
/// [TextEncoder](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder)
#external
pub type TextEncoder

///|
pub impl TJsValue for TextEncoder with to_js(self : TextEncoder) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextEncoder with from_js_any(value : JsAny) -> TextEncoder = "%identity"

///|
pub fn[T : TTextEncoder] TextEncoder::into(self : TextEncoder) -> T = "%identity"

///|
pub impl TTextEncoder for TextEncoder

///|
pub fn TextEncoder::new() -> TextEncoder {
  text_encoder_new_ffi()
}

///|
/// [TextEncoder](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder) interface.
pub trait TTextEncoder: TJsValue {
  encode(self : Self, input? : String) -> Uint8Array = _
  encode_into(self : Self, source : String, destination : Uint8Array) -> TextEncoderEncodeIntoResult = _
  encoding(self : Self) -> String = _
}

///|
/// [TextEncoder.encode](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encode)
impl TTextEncoder with encode(self : Self, input? : String = "") -> Uint8Array {
  text_encoder_encode_ffi(TJsValue::to_js(self), TJsValue::to_js(input))
}

///|
/// [TextEncoder.encodeInto](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encodeInto)
impl TTextEncoder with encode_into(
  self : Self,
  source : String,
  destination : Uint8Array,
) -> TextEncoderEncodeIntoResult {
  text_encoder_encode_into_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(source),
    TJsValue::to_js(destination),
  )
}

///|
/// [TextEncoder.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encoding)
impl TTextEncoder with encoding(self : Self) -> String {
  text_encoder_encoding_ffi(TJsValue::to_js(self))
}
