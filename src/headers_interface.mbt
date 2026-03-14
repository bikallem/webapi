// Do not edit. This file is generated.
// MoonBit type: Headers
// Specifications: fetch.idl

/// [Headers](https://developer.mozilla.org/en-US/docs/Web/API/Headers)
#external
pub type Headers

pub impl TJsValue for Headers with to_js(self: Headers) -> JsValue = "%identity"

pub impl FromJsAny for Headers with from_js_any(value : JsAny) -> Headers = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THeaders] Headers::into(self : Headers) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THeaders] Headers::unsafe_into(self : Headers) -> T = "%identity"

pub impl HasConstructor for Headers with constructor_name() { "Headers" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THeaders + HasConstructor] Headers::try_into(self : Headers) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THeaders for Headers

pub fn Headers::new(init? : &THeadersInit) -> Headers {
  headers_new_ffi(match init {
Some(v) => v.to_js()
None => JsValue::undefined()
})
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
  headers_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option_prim()
}

/// [Headers.getSetCookie](https://developer.mozilla.org/en-US/docs/Web/API/Headers/getSetCookie)
impl THeaders with get_set_cookie(self : Self) -> Array[String] {
  headers_get_set_cookie_ffi(TJsValue::to_js(self))
}

/// [Headers.has](https://developer.mozilla.org/en-US/docs/Web/API/Headers/has)
impl THeaders with has(self : Self, 
name : String) -> Bool {
  headers_has_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [Headers.set](https://developer.mozilla.org/en-US/docs/Web/API/Headers/set)
impl THeaders with set(self : Self, 
name : String, 
value : String) -> Unit {
  headers_set_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}

#cfg(target="js")
extern "js" fn headers_new_ffi(init: JsValue) -> Headers = "(init) => new Headers(init)"

#cfg(target="js")
extern "js" fn headers_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.append(name, value)"

#cfg(target="js")
extern "js" fn headers_delete_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => obj.delete(name)"

#cfg(target="js")
extern "js" fn headers_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.get(name)"

#cfg(target="js")
extern "js" fn headers_get_set_cookie_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getSetCookie()"

///|
#cfg(target="js")
fn headers_get_set_cookie_ffi(obj: JsValue) -> Array[String] {
  headers_get_set_cookie_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn headers_has_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.has(name)"

///|
#cfg(target="js")
fn headers_has_ffi(obj: JsValue, name: JsValue) -> Bool {
  headers_has_ffi_js(obj, name).unsafe_cast()
}

#cfg(target="js")
extern "js" fn headers_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.set(name, value)"

#cfg(target="wasm-gc")
fn headers_new_ffi(init: JsValue) -> Headers = "webapi_Headers" "new"

#cfg(target="wasm-gc")
fn headers_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "webapi_Headers" "append"

#cfg(target="wasm-gc")
fn headers_delete_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_Headers" "delete"

#cfg(target="wasm-gc")
fn headers_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_Headers" "get"

#cfg(target="wasm-gc")
fn headers_get_set_cookie_ffi_wasm(obj: JsValue) -> JsArray = "webapi_Headers" "getSetCookie"

///|
#cfg(target="wasm-gc")
fn headers_get_set_cookie_ffi(obj: JsValue) -> Array[String] {
  headers_get_set_cookie_ffi_wasm(obj).to_string_array()
}

#cfg(target="wasm-gc")
fn headers_has_ffi(obj: JsValue, name: JsValue) -> Bool = "webapi_Headers" "has"

#cfg(target="wasm-gc")
fn headers_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "webapi_Headers" "set"