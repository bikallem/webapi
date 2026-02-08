// Do not edit. This file is generated.
// MoonBit type: Headers
// Specifications: fetch.idl

/// [Headers](https://developer.mozilla.org/en-US/docs/Web/API/Headers)
#external
pub type Headers

pub impl TJsValue for Headers with to_js(self: Headers) -> JsValue = "%identity"

pub fn[T: THeaders] Headers::into(self : Headers) -> T = "%identity"

pub impl THeaders for Headers

pub fn Headers::new(init? : HeadersInit) -> Headers {
  headers_new_ffi(opt_to_js(init))
}

/// [Headers](https://developer.mozilla.org/en-US/docs/Web/API/Headers) interface.
pub trait THeaders: TJsValue {
  append(self : Self, name : String, value : String) -> Unit = _
  delete(self : Self, name : String) -> Unit = _
  get(self : Self, name : String) -> String? = _
  get_set_cookie(self : Self) -> Array[String] = _
  has(self : Self, name : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
}

/// [Headers.append](https://developer.mozilla.org/en-US/docs/Web/API/Headers/append)
impl THeaders with append(self : Self, 
name : String, 
value : String) -> Unit {
  headers_append_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}

/// [Headers.delete](https://developer.mozilla.org/en-US/docs/Web/API/Headers/delete)
impl THeaders with delete(self : Self, 
name : String) -> Unit {
  headers_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [Headers.get](https://developer.mozilla.org/en-US/docs/Web/API/Headers/get)
impl THeaders with get(self : Self, 
name : String) -> String? {
  let result = headers_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Headers.getSetCookie](https://developer.mozilla.org/en-US/docs/Web/API/Headers/getSetCookie)
impl THeaders with get_set_cookie(self : Self) -> Array[String] {
  headers_get_set_cookie_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Headers.has](https://developer.mozilla.org/en-US/docs/Web/API/Headers/has)
impl THeaders with has(self : Self, 
name : String) -> Bool {
  headers_has_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).unsafe_cast()
}

/// [Headers.set](https://developer.mozilla.org/en-US/docs/Web/API/Headers/set)
impl THeaders with set(self : Self, 
name : String, 
value : String) -> Unit {
  headers_set_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}