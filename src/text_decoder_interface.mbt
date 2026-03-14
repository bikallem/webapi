// Do not edit. This file is generated.
// MoonBit type: TextDecoder
// Specifications: encoding.idl

/// [TextDecoder](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder)
#external
pub type TextDecoder

pub impl TJsValue for TextDecoder with to_js(self: TextDecoder) -> JsValue = "%identity"

pub impl FromJsAny for TextDecoder with from_js_any(value : JsAny) -> TextDecoder = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TTextDecoder] TextDecoder::into(self : TextDecoder) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TTextDecoder] TextDecoder::unsafe_into(self : TextDecoder) -> T = "%identity"

pub impl HasConstructor for TextDecoder with constructor_name() { "TextDecoder" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextDecoder + HasConstructor] TextDecoder::try_into(self : TextDecoder) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TTextDecoder for TextDecoder

pub fn TextDecoder::new(label? : String, 
options? : TextDecoderOptions) -> TextDecoder {
  text_decoder_new_ffi(opt_to_js(label), opt_to_js(options))
}

/// [TextDecoder](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder) interface.
pub trait TTextDecoder: TJsValue {
  decode(self : Self, input? : &TAllowSharedBufferSource, options? : TextDecodeOptions) -> String = _
  encoding(self : Self) -> String = _
  fatal(self : Self) -> Bool = _
  ignore_bom(self : Self) -> Bool = _
}

/// [TextDecoder.decode](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/decode)
impl TTextDecoder with decode(self : Self, 
input? : &TAllowSharedBufferSource, 
options? : TextDecodeOptions) -> String {
  text_decoder_decode_ffi(TJsValue::to_js(self), match input {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(options))
}

/// [TextDecoder.encoding](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/encoding)
impl TTextDecoder with encoding(self : Self) -> String {
  text_decoder_encoding_ffi(TJsValue::to_js(self))
}

/// [TextDecoder.fatal](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/fatal)
impl TTextDecoder with fatal(self : Self) -> Bool {
  text_decoder_fatal_ffi(TJsValue::to_js(self))
}

/// [TextDecoder.ignoreBOM](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/ignoreBOM)
impl TTextDecoder with ignore_bom(self : Self) -> Bool {
  text_decoder_ignore_bom_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn text_decoder_new_ffi(label: JsValue, options: JsValue) -> TextDecoder = "(label, options) => new TextDecoder(label, options)"

#cfg(target="js")
extern "js" fn text_decoder_decode_ffi_js(obj: JsValue, input: JsValue, options: JsValue) -> JsValue = "(obj, input, options) => obj.decode(input, options)"

///|
#cfg(target="js")
fn text_decoder_decode_ffi(obj: JsValue, input: JsValue, options: JsValue) -> String {
  text_decoder_decode_ffi_js(obj, input, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_decoder_encoding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.encoding"

///|
#cfg(target="js")
fn text_decoder_encoding_ffi(obj: JsValue) -> String {
  text_decoder_encoding_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_decoder_fatal_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fatal"

///|
#cfg(target="js")
fn text_decoder_fatal_ffi(obj: JsValue) -> Bool {
  text_decoder_fatal_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_decoder_ignore_bom_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ignoreBOM"

///|
#cfg(target="js")
fn text_decoder_ignore_bom_ffi(obj: JsValue) -> Bool {
  text_decoder_ignore_bom_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_decoder_new_ffi(label: JsValue, options: JsValue) -> TextDecoder = "webapi_TextDecoder" "new"

#cfg(target="wasm-gc")
fn text_decoder_decode_ffi_wasm(obj: JsValue, input: JsValue, options: JsValue) -> JsValue = "webapi_TextDecoder" "decode"

///|
#cfg(target="wasm-gc")
fn text_decoder_decode_ffi(obj: JsValue, input: JsValue, options: JsValue) -> String {
  jsvalue_to_string(text_decoder_decode_ffi_wasm(obj, input, options))
}

#cfg(target="wasm-gc")
fn text_decoder_encoding_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextDecoder" "get_encoding"

///|
#cfg(target="wasm-gc")
fn text_decoder_encoding_ffi(obj: JsValue) -> String {
  jsvalue_to_string(text_decoder_encoding_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn text_decoder_fatal_ffi(obj: JsValue) -> Bool = "webapi_TextDecoder" "get_fatal"

#cfg(target="wasm-gc")
fn text_decoder_ignore_bom_ffi(obj: JsValue) -> Bool = "webapi_TextDecoder" "get_ignoreBOM"