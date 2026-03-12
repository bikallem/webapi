// Do not edit. This file is generated.
// MoonBit type: TextDecoderStream
// Specifications: encoding.idl

/// [TextDecoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream)
#external
pub type TextDecoderStream

pub impl TJsValue for TextDecoderStream with to_js(self: TextDecoderStream) -> JsValue = "%identity"

pub impl FromJsAny for TextDecoderStream with from_js_any(value : JsAny) -> TextDecoderStream = "%identity"

pub fn[T: TTextDecoderStream] TextDecoderStream::into(self : TextDecoderStream) -> T = "%identity"

pub impl TTextDecoderStream for TextDecoderStream

pub fn TextDecoderStream::new(label? : String, 
options? : TextDecoderOptions) -> TextDecoderStream {
  text_decoder_stream_new_ffi(opt_to_js(label), opt_to_js(options))
}

/// [TextDecoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream) interface.
pub trait TTextDecoderStream: TJsValue {
  encoding(self : Self) -> String = _
  fatal(self : Self) -> Bool = _
  ignore_bom(self : Self) -> Bool = _
  readable(self : Self) -> ReadableStream = _
  writable(self : Self) -> WritableStream = _
}

/// [TextDecoderStream.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/encoding)
impl TTextDecoderStream with encoding(self : Self) -> String {
  text_decoder_stream_encoding_ffi(TJsValue::to_js(self))
}

/// [TextDecoderStream.fatal](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/fatal)
impl TTextDecoderStream with fatal(self : Self) -> Bool {
  text_decoder_stream_fatal_ffi(TJsValue::to_js(self))
}

/// [TextDecoderStream.ignoreBOM](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/ignoreBOM)
impl TTextDecoderStream with ignore_bom(self : Self) -> Bool {
  text_decoder_stream_ignore_bom_ffi(TJsValue::to_js(self))
}

/// [TextDecoderStream.readable](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/readable)
impl TTextDecoderStream with readable(self : Self) -> ReadableStream {
  text_decoder_stream_readable_ffi(TJsValue::to_js(self))
}

/// [TextDecoderStream.writable](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/writable)
impl TTextDecoderStream with writable(self : Self) -> WritableStream {
  text_decoder_stream_writable_ffi(TJsValue::to_js(self))
}