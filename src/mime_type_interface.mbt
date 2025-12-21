///|
#external
pub type MimeType

///|
pub impl TJsValue for MimeType with to_js(self : MimeType) -> JsValue = "%identity"

///|
pub fn[T : TMimeType] MimeType::into(self : MimeType) -> T = "%identity"

///|
pub impl TMimeType for MimeType

///|
pub trait TMimeType: TJsValue {}
