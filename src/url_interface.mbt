///|
#external
pub type URL

///|
pub impl TJsValue for URL with to_js(self : URL) -> JsValue = "%identity"

///|
pub fn[T : TURL] URL::into(self : URL) -> T = "%identity"

///|
pub impl TURL for URL

///|
pub trait TURL: TJsValue {}
