// Do not edit. This file is generated.
// MoonBit type: URLSearchParams
// Specifications: url.idl

///|
#external
pub type URLSearchParams

///|
pub impl TJsValue for URLSearchParams with to_js(self : URLSearchParams) -> JsValue = "%identity"

///|
pub fn[T : TURLSearchParams] URLSearchParams::into(self : URLSearchParams) -> T = "%identity"

///|
pub impl TURLSearchParams for URLSearchParams

///|
pub(open) trait TURLSearchParamsNewInit {
  to_js(self : Self) -> JsValue
}

///|
pub impl TURLSearchParamsNewInit for Array[Array[String]] with to_js(
  self : Array[Array[String]],
) -> JsValue = "%identity"

///|
pub impl TURLSearchParamsNewInit for JsValue with to_js(self : JsValue) -> JsValue = "%identity"

///|
pub impl TURLSearchParamsNewInit for String with to_js(self : String) -> JsValue = "%identity"

///|
extern "js" fn url_search_params_new_ffi(init : JsValue) -> URLSearchParams = "(init) => new URLSearchParams(init)"

///|
pub fn URLSearchParams::new(
  init? : &TURLSearchParamsNewInit = "",
) -> URLSearchParams {
  url_search_params_new_ffi(init.to_js())
}

///|
pub trait TURLSearchParams: TJsValue {
  size(self : Self) -> UInt = _
  append(self : Self, name : String, value : String) -> Unit = _
  delete(self : Self, name : String, value? : String) -> Unit = _
  get(self : Self, name : String) -> String = _
  get_all(self : Self, name : String) -> Array[String] = _
  has(self : Self, name : String, value? : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
  sort(self : Self) -> Unit = _
}

///|
extern "js" fn url_search_params_size_ffi(obj : JsValue) -> UInt = "(obj) => obj.size"

///|
impl TURLSearchParams with size(self : Self) -> UInt {
  url_search_params_size_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_search_params_append_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.append(obj, name, value)"

///|
impl TURLSearchParams with append(self : Self, name : String, value : String) -> Unit {
  url_search_params_append_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn url_search_params_delete_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.delete(obj, name, value)"

///|
impl TURLSearchParams with delete(self : Self, name : String, value? : String) -> Unit {
  url_search_params_delete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(value),
  )
}

///|
extern "js" fn url_search_params_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> String = "(obj, name) => obj.get(obj, name)"

///|
impl TURLSearchParams with get(self : Self, name : String) -> String {
  url_search_params_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn url_search_params_get_all_ffi(
  obj : JsValue,
  name : JsValue,
) -> Array[String] = "(obj, name) => obj.getAll(obj, name)"

///|
impl TURLSearchParams with get_all(self : Self, name : String) -> Array[String] {
  url_search_params_get_all_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn url_search_params_has_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Bool = "(obj, name, value) => obj.has(obj, name, value)"

///|
impl TURLSearchParams with has(self : Self, name : String, value? : String) -> Bool {
  url_search_params_has_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(value),
  )
}

///|
extern "js" fn url_search_params_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.set(obj, name, value)"

///|
impl TURLSearchParams with set(self : Self, name : String, value : String) -> Unit {
  url_search_params_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn url_search_params_sort_ffi(obj : JsValue) -> Unit = "(obj) => obj.sort(obj)"

///|
impl TURLSearchParams with sort(self : Self) -> Unit {
  url_search_params_sort_ffi(TJsValue::to_js(self))
}
