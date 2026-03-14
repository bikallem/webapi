// Do not edit. This file is generated.
// MoonBit type: TextEncoderStream
// Specifications: encoding.idl

/// [TextEncoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream)
#external
pub type TextEncoderStream

pub impl TJsValue for TextEncoderStream with to_js(self: TextEncoderStream) -> JsValue = "%identity"

pub impl FromJsAny for TextEncoderStream with from_js_any(value : JsAny) -> TextEncoderStream = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TTextEncoderStream] TextEncoderStream::into(self : TextEncoderStream) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TTextEncoderStream] TextEncoderStream::unsafe_into(self : TextEncoderStream) -> T = "%identity"

pub impl HasConstructor for TextEncoderStream with constructor_name() { "TextEncoderStream" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextEncoderStream + HasConstructor] TextEncoderStream::try_into(self : TextEncoderStream) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TTextEncoderStream for TextEncoderStream

pub fn TextEncoderStream::new() -> TextEncoderStream {
  text_encoder_stream_new_ffi()
}

/// [TextEncoderStream](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream) interface.
pub trait TTextEncoderStream: TJsValue {
  encoding(self : Self) -> String = _
  readable(self : Self) -> ReadableStream = _
  writable(self : Self) -> WritableStream = _
}

/// [TextEncoderStream.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream/encoding)
impl TTextEncoderStream with encoding(self : Self) -> String {
  text_encoder_stream_encoding_ffi(TJsValue::to_js(self))
}

/// [TextEncoderStream.readable](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream/readable)
impl TTextEncoderStream with readable(self : Self) -> ReadableStream {
  text_encoder_stream_readable_ffi(TJsValue::to_js(self))
}

/// [TextEncoderStream.writable](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream/writable)
impl TTextEncoderStream with writable(self : Self) -> WritableStream {
  text_encoder_stream_writable_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn text_encoder_stream_new_ffi() -> TextEncoderStream = "() => new TextEncoderStream()"

#cfg(target="js")
extern "js" fn text_encoder_stream_encoding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.encoding"

///|
#cfg(target="js")
fn text_encoder_stream_encoding_ffi(obj: JsValue) -> String {
  text_encoder_stream_encoding_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_encoder_stream_readable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readable"

///|
#cfg(target="js")
fn text_encoder_stream_readable_ffi(obj: JsValue) -> ReadableStream {
  text_encoder_stream_readable_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_encoder_stream_writable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.writable"

///|
#cfg(target="js")
fn text_encoder_stream_writable_ffi(obj: JsValue) -> WritableStream {
  text_encoder_stream_writable_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_encoder_stream_new_ffi() -> TextEncoderStream = "webapi_TextEncoderStream" "new"

#cfg(target="wasm-gc")
fn text_encoder_stream_encoding_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextEncoderStream" "get_encoding"

///|
#cfg(target="wasm-gc")
fn text_encoder_stream_encoding_ffi(obj: JsValue) -> String {
  jsvalue_to_string(text_encoder_stream_encoding_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn text_encoder_stream_readable_ffi(obj: JsValue) -> ReadableStream = "webapi_TextEncoderStream" "get_readable"

#cfg(target="wasm-gc")
fn text_encoder_stream_writable_ffi(obj: JsValue) -> WritableStream = "webapi_TextEncoderStream" "get_writable"