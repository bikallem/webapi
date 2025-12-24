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
pub trait TMimeTypeArray: TJsValue {
  length(self : Self) -> UInt = _
}

///|
extern "js" fn mime_type_array_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TMimeTypeArray with length(self : Self) -> UInt {
  mime_type_array_length_ffi(TJsValue::to_js(self))
}
