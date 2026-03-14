// Do not edit. This file is generated.
// MoonBit type: MediaError
// Specifications: html.idl

/// [MediaError](https://developer.mozilla.org/en-US/docs/Web/API/MediaError)
#external
pub type MediaError

pub impl TJsValue for MediaError with to_js(self: MediaError) -> JsValue = "%identity"

pub impl FromJsAny for MediaError with from_js_any(value : JsAny) -> MediaError = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TMediaError] MediaError::into(self : MediaError) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TMediaError] MediaError::unsafe_into(self : MediaError) -> T = "%identity"

pub impl HasConstructor for MediaError with constructor_name() { "MediaError" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TMediaError + HasConstructor] MediaError::try_into(self : MediaError) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TMediaError for MediaError

pub const MEDIA_ERROR_MEDIA_ERR_ABORTED: UInt = 1

pub const MEDIA_ERROR_MEDIA_ERR_NETWORK: UInt = 2

pub const MEDIA_ERROR_MEDIA_ERR_DECODE: UInt = 3

pub const MEDIA_ERROR_MEDIA_ERR_SRC_NOT_SUPPORTED: UInt = 4

/// [MediaError](https://developer.mozilla.org/en-US/docs/Web/API/MediaError) interface.
pub trait TMediaError: TJsValue {
  code(self : Self) -> UInt = _
  message(self : Self) -> String = _
}

/// [MediaError.code](https://developer.mozilla.org/en-US/docs/Web/API/MediaError/code)
impl TMediaError with code(self : Self) -> UInt {
  media_error_code_ffi(TJsValue::to_js(self))
}

/// [MediaError.message](https://developer.mozilla.org/en-US/docs/Web/API/MediaError/message)
impl TMediaError with message(self : Self) -> String {
  media_error_message_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn media_error_code_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.code"

///|
#cfg(target="js")
fn media_error_code_ffi(obj: JsValue) -> UInt {
  media_error_code_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn media_error_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.message"

///|
#cfg(target="js")
fn media_error_message_ffi(obj: JsValue) -> String {
  media_error_message_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn media_error_code_ffi(obj: JsValue) -> UInt = "webapi_MediaError" "get_code"

#cfg(target="wasm-gc")
fn media_error_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MediaError" "get_message"

///|
#cfg(target="wasm-gc")
fn media_error_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(media_error_message_ffi_wasm(obj))
}