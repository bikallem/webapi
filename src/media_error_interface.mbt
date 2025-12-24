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
pub trait TMediaError: TJsValue {}
