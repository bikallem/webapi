// Do not edit. This file is generated.
// MoonBit type: TextEncoderStream
// Specifications: encoding.idl

/// [TextEncoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream)
#external
pub type TextEncoderStream

pub impl TJsValue for TextEncoderStream with to_js(self: TextEncoderStream) -> JsValue = "%identity"

pub fn[T: TTextEncoderStream] TextEncoderStream::into(self : TextEncoderStream) -> T = "%identity"

pub impl TTextEncoderStream for TextEncoderStream

pub fn TextEncoderStream::new() -> TextEncoderStream {
  text_encoder_stream_new_ffi()
}

/// [TextEncoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream) interface.
pub trait TTextEncoderStream: TJsValue {
  encoding(self : Self) -> String = _
}

/// [TextEncoderStream.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream/encoding)
impl TTextEncoderStream with encoding(self : Self) -> String {
  text_encoder_stream_encoding_ffi(TJsValue::to_js(self))
}