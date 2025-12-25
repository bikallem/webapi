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
pub trait TURL: TJsValue {
  create_object_url(obj : &TURLCreateObjectURLObj) -> String = _
  revoke_object_url(url : String) -> Unit = _
}

///|
extern "js" fn url_create_object_url_ffi(obj : JsValue) -> String = "(obj) => { URL.createObjectURL(obj) }"

///|
impl TURL with create_object_url(obj : &TURLCreateObjectURLObj) -> String {
  url_create_object_url_ffi(obj.to_js())
}

///|
extern "js" fn url_revoke_object_url_ffi(url : JsValue) -> Unit = "(url) => { URL.revokeObjectURL(url) }"

///|
impl TURL with revoke_object_url(url : String) -> Unit {
  url_revoke_object_url_ffi(TJsValue::to_js(url))
}
