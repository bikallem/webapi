///|
#external
pub type Location

///|
pub impl TJsValue for Location with to_js(self : Location) -> JsValue = "%identity"

///|
pub fn[T : TLocation] Location::into(self : Location) -> T = "%identity"

///|
pub impl TLocation for Location

///|
pub trait TLocation: TJsValue {
  assign(self : Self, url : String) -> Unit = _
  replace(self : Self, url : String) -> Unit = _
  reload(self : Self) -> Unit = _
}

///|
extern "js" fn location_assign_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.assign(obj, url)"

///|
impl TLocation with assign(self : Self, url : String) -> Unit {
  location_assign_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
extern "js" fn location_replace_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.replace(obj, url)"

///|
impl TLocation with replace(self : Self, url : String) -> Unit {
  location_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
extern "js" fn location_reload_ffi(obj : JsValue) -> Unit = "(obj) => obj.reload(obj)"

///|
impl TLocation with reload(self : Self) -> Unit {
  location_reload_ffi(TJsValue::to_js(self))
}
