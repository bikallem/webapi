// Do not edit. This file is generated.
// MoonBit type: URLSearchParams
// Specifications: url.idl

/// [URLSearchParams](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams)
#external
pub type URLSearchParams

pub impl TJsValue for URLSearchParams with to_js(self: URLSearchParams) -> JsValue = "%identity"

pub impl FromJsAny for URLSearchParams with from_js_any(value : JsAny) -> URLSearchParams = "%identity"

pub fn[T: TURLSearchParams] URLSearchParams::into(self : URLSearchParams) -> T = "%identity"

pub impl TURLSearchParams for URLSearchParams

pub(open) trait TURLSearchParamsNewInit : TJsValue {}

pub impl TURLSearchParamsNewInit for Array[Array[String]]

pub impl TURLSearchParamsNewInit for JsValue

pub impl TURLSearchParamsNewInit for String

pub fn URLSearchParams::new(init? : &TURLSearchParamsNewInit) -> URLSearchParams {
  url_search_params_new_ffi(match init {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

/// [URLSearchParams](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams) interface.
pub trait TURLSearchParams: TJsValue {
  size(self : Self) -> UInt = _
  append(self : Self, name : String, value : String) -> Unit = _
  delete(self : Self, name : String, value? : String) -> Unit = _
  get(self : Self, name : String) -> String? = _
  get_all(self : Self, name : String) -> Array[String] = _
  has(self : Self, name : String, value? : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
  sort(self : Self) -> Unit = _
}

/// [URLSearchParams.size](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/size)
impl TURLSearchParams with size(self : Self) -> UInt {
  url_search_params_size_ffi(TJsValue::to_js(self))
}

/// [URLSearchParams.append](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/append)
impl TURLSearchParams with append(self : Self, 
name : String, 
value : String) -> Unit {
  url_search_params_append_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}

/// [URLSearchParams.delete](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/delete)
impl TURLSearchParams with delete(self : Self, 
name : String, 
value? : String) -> Unit {
  url_search_params_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(value))
}

/// [URLSearchParams.get](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/get)
impl TURLSearchParams with get(self : Self, 
name : String) -> String? {
  url_search_params_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

/// [URLSearchParams.getAll](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/getAll)
impl TURLSearchParams with get_all(self : Self, 
name : String) -> Array[String] {
  url_search_params_get_all_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [URLSearchParams.has](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/has)
impl TURLSearchParams with has(self : Self, 
name : String, 
value? : String) -> Bool {
  url_search_params_has_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(value))
}

/// [URLSearchParams.set](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/set)
impl TURLSearchParams with set(self : Self, 
name : String, 
value : String) -> Unit {
  url_search_params_set_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}

/// [URLSearchParams.sort](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/sort)
impl TURLSearchParams with sort(self : Self) -> Unit {
  url_search_params_sort_ffi(TJsValue::to_js(self))
}