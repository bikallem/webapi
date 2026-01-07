// Do not edit. This file is generated.
// MoonBit type: Headers
// Specifications: fetch.idl

///|
/// [Headers](https://developer.mozilla.org/en-US/docs/Web/API/Headers)
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
/// [Headers](https://developer.mozilla.org/en-US/docs/Web/API/Headers) interface.
pub trait THeaders: TJsValue {
  append(self : Self, name : String, value : String) -> Unit = _
  delete(self : Self, name : String) -> Unit = _
  get(self : Self, name : String) -> String? = _
  get_set_cookie(self : Self) -> Array[String] = _
  has(self : Self, name : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
}

///|
extern "js" fn headers_append_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.append(name, value)"

///|
/// [Headers.append](https://developer.mozilla.org/en-US/docs/Web/API/Headers/append)
impl THeaders with append(self : Self, name : String, value : String) -> Unit {
  headers_append_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn headers_delete_ffi(obj : JsValue, name : JsValue) -> Unit = "(obj, name) => obj.delete(name)"

///|
/// [Headers.delete](https://developer.mozilla.org/en-US/docs/Web/API/Headers/delete)
impl THeaders with delete(self : Self, name : String) -> Unit {
  headers_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn headers_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj.get(name)"

///|
/// [Headers.get](https://developer.mozilla.org/en-US/docs/Web/API/Headers/get)
impl THeaders with get(self : Self, name : String) -> String? {
  let result = headers_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn headers_get_set_cookie_ffi(obj : JsValue) -> Array[String] = "(obj) => obj.getSetCookie()"

///|
/// [Headers.getSetCookie](https://developer.mozilla.org/en-US/docs/Web/API/Headers/getSetCookie)
impl THeaders with get_set_cookie(self : Self) -> Array[String] {
  headers_get_set_cookie_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn headers_has_ffi(obj : JsValue, name : JsValue) -> Bool = "(obj, name) => obj.has(name)"

///|
/// [Headers.has](https://developer.mozilla.org/en-US/docs/Web/API/Headers/has)
impl THeaders with has(self : Self, name : String) -> Bool {
  headers_has_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn headers_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.set(name, value)"

///|
/// [Headers.set](https://developer.mozilla.org/en-US/docs/Web/API/Headers/set)
impl THeaders with set(self : Self, name : String, value : String) -> Unit {
  headers_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}
