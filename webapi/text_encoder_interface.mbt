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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTextEncoder] TextEncoder::into(self : TextEncoder) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTextEncoder] TextEncoder::unsafe_into(self : TextEncoder) -> T = "%identity"

///|
pub impl HasConstructor for TextEncoder with constructor_name() {
  "TextEncoder"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextEncoder + HasConstructor] TextEncoder::try_into(
  self : TextEncoder,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
impl TTextEncoder with encode(self : Self, input? : String) -> Uint8Array {
  text_encoder_encode_ffi(TJsValue::to_js(self), opt_to_js(input))
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

///|
#cfg(target="js")
extern "js" fn text_encoder_new_ffi() -> TextEncoder = "() => new TextEncoder()"

///|
#cfg(target="js")
extern "js" fn text_encoder_encode_ffi_js(
  obj : JsValue,
  input : JsValue,
) -> JsValue = "(obj, input) => obj.encode(input)"

///|
#cfg(target="js")
fn text_encoder_encode_ffi(obj : JsValue, input : JsValue) -> Uint8Array {
  text_encoder_encode_ffi_js(obj, input).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_encoder_encode_into_ffi_js(
  obj : JsValue,
  source : JsValue,
  destination : JsValue,
) -> JsValue = "(obj, source, destination) => obj.encodeInto(source, destination)"

///|
#cfg(target="js")
fn text_encoder_encode_into_ffi(
  obj : JsValue,
  source : JsValue,
  destination : JsValue,
) -> TextEncoderEncodeIntoResult {
  text_encoder_encode_into_ffi_js(obj, source, destination).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_encoder_encoding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.encoding"

///|
#cfg(target="js")
fn text_encoder_encoding_ffi(obj : JsValue) -> String {
  text_encoder_encoding_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn text_encoder_new_ffi() -> TextEncoder = "webapi_TextEncoder" "new"

///|
#cfg(target="wasm-gc")
fn text_encoder_encode_ffi(obj : JsValue, input : JsValue) -> Uint8Array = "webapi_TextEncoder" "encode"

///|
#cfg(target="wasm-gc")
fn text_encoder_encode_into_ffi(
  obj : JsValue,
  source : JsValue,
  destination : JsValue,
) -> TextEncoderEncodeIntoResult = "webapi_TextEncoder" "encodeInto"

///|
#cfg(target="wasm-gc")
fn text_encoder_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextEncoder" "get_encoding"

///|
#cfg(target="wasm-gc")
fn text_encoder_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_encoder_encoding_ffi_wasm(obj))
}
