// Do not edit. This file is generated.
// MoonBit type: Headers
// Specifications: fetch.idl

///|
#external
pub type Headers

///|
pub impl TJsValue for Headers with to_js(self : Headers) -> JsValue = "%identity"

///|
pub fn[T : THeaders] Headers::into(self : Headers) -> T = "%identity"

///|
pub impl THeaders for Headers

///|
extern "js" fn headers_new_ffi(init : JsValue) -> Headers = "(init) => new Headers(init)"

///|
pub fn Headers::new(init? : HeadersInit) -> Headers {
  headers_new_ffi(opt_to_js(init))
}

///|
pub trait THeaders: TJsValue {
  append(self : Self, name : String, value : String) -> Unit = _
  delete(self : Self, name : String) -> Unit = _
  get(self : Self, name : String) -> String = _
  get_set_cookie(self : Self) -> Array[String] = _
  has(self : Self, name : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
}

///|
extern "js" fn headers_append_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.append(obj, name, value)"

///|
impl THeaders with append(self : Self, name : String, value : String) -> Unit {
  headers_append_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn headers_delete_ffi(obj : JsValue, name : JsValue) -> Unit = "(obj, name) => obj.delete(obj, name)"

///|
impl THeaders with delete(self : Self, name : String) -> Unit {
  headers_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn headers_get_ffi(obj : JsValue, name : JsValue) -> String = "(obj, name) => obj.get(obj, name)"

///|
impl THeaders with get(self : Self, name : String) -> String {
  headers_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn headers_get_set_cookie_ffi(obj : JsValue) -> Array[String] = "(obj) => obj.getSetCookie(obj)"

///|
impl THeaders with get_set_cookie(self : Self) -> Array[String] {
  headers_get_set_cookie_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn headers_has_ffi(obj : JsValue, name : JsValue) -> Bool = "(obj, name) => obj.has(obj, name)"

///|
impl THeaders with has(self : Self, name : String) -> Bool {
  headers_has_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn headers_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.set(obj, name, value)"

///|
impl THeaders with set(self : Self, name : String, value : String) -> Unit {
  headers_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}
