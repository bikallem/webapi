///|
#external
pub type MediaError

///|
pub impl TJsValue for MediaError with to_js(self : MediaError) -> JsValue = "%identity"

///|
pub fn[T : TMediaError] MediaError::into(self : MediaError) -> T = "%identity"

///|
pub impl TMediaError for MediaError

///|
pub const MEDIA_ERROR_MEDIA_ERR_ABORTED : UInt = 1

///|
pub const MEDIA_ERROR_MEDIA_ERR_NETWORK : UInt = 2

///|
pub const MEDIA_ERROR_MEDIA_ERR_DECODE : UInt = 3

///|
pub const MEDIA_ERROR_MEDIA_ERR_SRC_NOT_SUPPORTED : UInt = 4

///|
pub trait TMediaError: TJsValue {
  code(self : Self) -> UInt = _
  message(self : Self) -> String = _
}

///|
extern "js" fn media_error_code_ffi(obj : JsValue) -> UInt = "(obj) => obj.code"

///|
impl TMediaError with code(self : Self) -> UInt {
  media_error_code_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn media_error_message_ffi(obj : JsValue) -> String = "(obj) => obj.message"

///|
impl TMediaError with message(self : Self) -> String {
  media_error_message_ffi(TJsValue::to_js(self))
}
