// Do not edit. This file is generated.
// MoonBit type: URL
// Specifications: FileAPI.idl

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
pub(open) trait TURLCreateObjectURLObj {
  to_js(self : Self) -> JsValue
}

///|
pub impl TURLCreateObjectURLObj for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TURLCreateObjectURLObj for MediaSource with to_js(self : MediaSource) -> JsValue = "%identity"

///|
pub trait TURL: TJsValue {}

///|
extern "js" fn url_create_object_url_ffi(obj : JsValue) -> String = "(obj) => URL.createObjectURL(obj)"

///|
pub fn URL::create_object_url(obj : &TURLCreateObjectURLObj) -> String {
  url_create_object_url_ffi(obj.to_js())
}

///|
extern "js" fn url_revoke_object_url_ffi(url : JsValue) -> Unit = "(url) => URL.revokeObjectURL(url)"

///|
pub fn URL::revoke_object_url(url : String) -> Unit {
  url_revoke_object_url_ffi(TJsValue::to_js(url))
}
