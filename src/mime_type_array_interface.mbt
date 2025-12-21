///|
#external
pub type MimeTypeArray

///|
pub impl TJsValue for MimeTypeArray with to_js(self : MimeTypeArray) -> JsValue = "%identity"

///|
pub fn[T : TMimeTypeArray] MimeTypeArray::into(self : MimeTypeArray) -> T = "%identity"

///|
pub impl TMimeTypeArray for MimeTypeArray

///|
pub trait TMimeTypeArray: TJsValue {}
