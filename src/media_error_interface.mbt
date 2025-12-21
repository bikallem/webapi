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
pub trait TMediaError: TJsValue {}
