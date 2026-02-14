// Do not edit. This file is generated.
// MoonBit type: TextEncoderStream
// Specifications: encoding.idl

///|
/// [TextEncoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream)
#external
pub type TextEncoderStream

///|
pub impl TJsValue for TextEncoderStream with to_js(self : TextEncoderStream) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextEncoderStream with from_js_any(value : JsAny) -> TextEncoderStream = "%identity"

///|
pub fn[T : TTextEncoderStream] TextEncoderStream::into(
  self : TextEncoderStream,
) -> T = "%identity"

///|
pub impl TTextEncoderStream for TextEncoderStream

///|
pub fn TextEncoderStream::new() -> TextEncoderStream {
  text_encoder_stream_new_ffi()
}

///|
/// [TextEncoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream) interface.
pub trait TTextEncoderStream: TJsValue {
  encoding(self : Self) -> String = _
  readable(self : Self) -> ReadableStream = _
  writable(self : Self) -> WritableStream = _
}

///|
/// [TextEncoderStream.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream/encoding)
impl TTextEncoderStream with encoding(self : Self) -> String {
  text_encoder_stream_encoding_ffi(TJsValue::to_js(self))
}

///|
/// [TextEncoderStream.readable](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream/readable)
impl TTextEncoderStream with readable(self : Self) -> ReadableStream {
  text_encoder_stream_readable_ffi(TJsValue::to_js(self))
}

///|
/// [TextEncoderStream.writable](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream/writable)
impl TTextEncoderStream with writable(self : Self) -> WritableStream {
  text_encoder_stream_writable_ffi(TJsValue::to_js(self))
}
