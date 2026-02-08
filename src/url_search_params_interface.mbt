// Do not edit. This file is generated.
// MoonBit type: URLSearchParams
// Specifications: url.idl

///|
/// [URLSearchParams](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams)
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
pub fn URLSearchParams::new(
  init? : &TURLSearchParamsNewInit = "",
) -> URLSearchParams {
  url_search_params_new_ffi(init.to_js())
}

///|
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

///|
/// [URLSearchParams.size](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/size)
impl TURLSearchParams with size(self : Self) -> UInt {
  url_search_params_size_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [URLSearchParams.append](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/append)
impl TURLSearchParams with append(self : Self, name : String, value : String) -> Unit {
  url_search_params_append_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
/// [URLSearchParams.delete](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/delete)
impl TURLSearchParams with delete(self : Self, name : String, value? : String) -> Unit {
  url_search_params_delete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(value),
  )
}

///|
/// [URLSearchParams.get](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/get)
impl TURLSearchParams with get(self : Self, name : String) -> String? {
  let result = url_search_params_get_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [URLSearchParams.getAll](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/getAll)
impl TURLSearchParams with get_all(self : Self, name : String) -> Array[String] {
  url_search_params_get_all_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).unsafe_cast()
}

///|
/// [URLSearchParams.has](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/has)
impl TURLSearchParams with has(self : Self, name : String, value? : String) -> Bool {
  url_search_params_has_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(value),
  ).unsafe_cast()
}

///|
/// [URLSearchParams.set](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/set)
impl TURLSearchParams with set(self : Self, name : String, value : String) -> Unit {
  url_search_params_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
/// [URLSearchParams.sort](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/sort)
impl TURLSearchParams with sort(self : Self) -> Unit {
  url_search_params_sort_ffi(TJsValue::to_js(self))
}
