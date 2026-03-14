// Do not edit. This file is generated.
// MoonBit type: TextDecoderStream
// Specifications: encoding.idl

///|
/// [TextDecoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream)
#external
pub type TextDecoderStream

///|
pub impl TJsValue for TextDecoderStream with to_js(self : TextDecoderStream) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextDecoderStream with from_js_any(value : JsAny) -> TextDecoderStream = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTextDecoderStream] TextDecoderStream::into(
  self : TextDecoderStream,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTextDecoderStream] TextDecoderStream::unsafe_into(
  self : TextDecoderStream,
) -> T = "%identity"

///|
pub impl HasConstructor for TextDecoderStream with constructor_name() {
  "TextDecoderStream"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextDecoderStream + HasConstructor] TextDecoderStream::try_into(
  self : TextDecoderStream,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TTextDecoderStream for TextDecoderStream

///|
pub fn TextDecoderStream::new(
  label? : String,
  options? : TextDecoderOptions,
) -> TextDecoderStream {
  text_decoder_stream_new_ffi(opt_to_js(label), opt_to_js(options))
}

///|
/// [TextDecoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream) interface.
pub trait TTextDecoderStream: TJsValue {
  encoding(self : Self) -> String = _
  fatal(self : Self) -> Bool = _
  ignore_bom(self : Self) -> Bool = _
  readable(self : Self) -> ReadableStream = _
  writable(self : Self) -> WritableStream = _
}

///|
/// [TextDecoderStream.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/encoding)
impl TTextDecoderStream with encoding(self : Self) -> String {
  text_decoder_stream_encoding_ffi(TJsValue::to_js(self))
}

///|
/// [TextDecoderStream.fatal](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/fatal)
impl TTextDecoderStream with fatal(self : Self) -> Bool {
  text_decoder_stream_fatal_ffi(TJsValue::to_js(self))
}

///|
/// [TextDecoderStream.ignoreBOM](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/ignoreBOM)
impl TTextDecoderStream with ignore_bom(self : Self) -> Bool {
  text_decoder_stream_ignore_bom_ffi(TJsValue::to_js(self))
}

///|
/// [TextDecoderStream.readable](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/readable)
impl TTextDecoderStream with readable(self : Self) -> ReadableStream {
  text_decoder_stream_readable_ffi(TJsValue::to_js(self))
}

///|
/// [TextDecoderStream.writable](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/writable)
impl TTextDecoderStream with writable(self : Self) -> WritableStream {
  text_decoder_stream_writable_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn text_decoder_stream_new_ffi(
  label : JsValue,
  options : JsValue,
) -> TextDecoderStream = "(label, options) => new TextDecoderStream(label, options)"

///|
#cfg(target="js")
extern "js" fn text_decoder_stream_encoding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.encoding"

///|
#cfg(target="js")
fn text_decoder_stream_encoding_ffi(obj : JsValue) -> String {
  text_decoder_stream_encoding_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_decoder_stream_fatal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fatal"

///|
#cfg(target="js")
fn text_decoder_stream_fatal_ffi(obj : JsValue) -> Bool {
  text_decoder_stream_fatal_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_decoder_stream_ignore_bom_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ignoreBOM"

///|
#cfg(target="js")
fn text_decoder_stream_ignore_bom_ffi(obj : JsValue) -> Bool {
  text_decoder_stream_ignore_bom_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_decoder_stream_readable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readable"

///|
#cfg(target="js")
fn text_decoder_stream_readable_ffi(obj : JsValue) -> ReadableStream {
  text_decoder_stream_readable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_decoder_stream_writable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.writable"

///|
#cfg(target="js")
fn text_decoder_stream_writable_ffi(obj : JsValue) -> WritableStream {
  text_decoder_stream_writable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn text_decoder_stream_new_ffi(
  label : JsValue,
  options : JsValue,
) -> TextDecoderStream = "webapi_TextDecoderStream" "new"

///|
#cfg(target="wasm-gc")
fn text_decoder_stream_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextDecoderStream" "get_encoding"

///|
#cfg(target="wasm-gc")
fn text_decoder_stream_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_decoder_stream_encoding_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn text_decoder_stream_fatal_ffi(obj : JsValue) -> Bool = "webapi_TextDecoderStream" "get_fatal"

///|
#cfg(target="wasm-gc")
fn text_decoder_stream_ignore_bom_ffi(obj : JsValue) -> Bool = "webapi_TextDecoderStream" "get_ignoreBOM"

///|
#cfg(target="wasm-gc")
fn text_decoder_stream_readable_ffi(obj : JsValue) -> ReadableStream = "webapi_TextDecoderStream" "get_readable"

///|
#cfg(target="wasm-gc")
fn text_decoder_stream_writable_ffi(obj : JsValue) -> WritableStream = "webapi_TextDecoderStream" "get_writable"
