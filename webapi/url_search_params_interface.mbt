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
pub impl FromJsAny for URLSearchParams with from_js_any(value : JsAny) -> URLSearchParams = "%identity"

///|
pub fn[T : TURLSearchParams] URLSearchParams::into(self : URLSearchParams) -> T = "%identity"

///|
pub impl TURLSearchParams for URLSearchParams

///|
pub(open) trait TURLSearchParamsNewInit: TJsValue {}

///|
pub impl TURLSearchParamsNewInit for Array[Array[String]]

///|
pub impl TURLSearchParamsNewInit for JsValue

///|
pub impl TURLSearchParamsNewInit for String

///|
pub fn URLSearchParams::new(
  init? : &TURLSearchParamsNewInit,
) -> URLSearchParams {
  url_search_params_new_ffi(
    match init {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
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
  url_search_params_size_ffi(TJsValue::to_js(self))
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
  url_search_params_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option_prim()
}

///|
/// [URLSearchParams.getAll](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/getAll)
impl TURLSearchParams with get_all(self : Self, name : String) -> Array[String] {
  url_search_params_get_all_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [URLSearchParams.has](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/has)
impl TURLSearchParams with has(self : Self, name : String, value? : String) -> Bool {
  url_search_params_has_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(value),
  )
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

///|
#cfg(target="js")
extern "js" fn url_search_params_new_ffi(init : JsValue) -> URLSearchParams = "(init) => new URLSearchParams(init)"

///|
#cfg(target="js")
extern "js" fn url_search_params_size_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn url_search_params_size_ffi(obj : JsValue) -> UInt {
  url_search_params_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_search_params_append_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.append(name, value)"

///|
#cfg(target="js")
extern "js" fn url_search_params_delete_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.delete(name, value)"

///|
#cfg(target="js")
extern "js" fn url_search_params_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.get(name)"

///|
#cfg(target="js")
extern "js" fn url_search_params_get_all_ffi_js(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.getAll(name)"

///|
#cfg(target="js")
fn url_search_params_get_all_ffi(
  obj : JsValue,
  name : JsValue,
) -> Array[String] {
  url_search_params_get_all_ffi_js(obj, name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_search_params_has_ffi_js(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> JsValue = "(obj, name, value) => obj.has(name, value)"

///|
#cfg(target="js")
fn url_search_params_has_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Bool {
  url_search_params_has_ffi_js(obj, name, value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_search_params_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.set(name, value)"

///|
#cfg(target="js")
extern "js" fn url_search_params_sort_ffi(obj : JsValue) -> Unit = "(obj) => obj.sort()"

///|
#cfg(target="wasm-gc")
fn url_search_params_new_ffi(init : JsValue) -> URLSearchParams = "webapi_URLSearchParams" "new"

///|
#cfg(target="wasm-gc")
fn url_search_params_size_ffi(obj : JsValue) -> UInt = "webapi_URLSearchParams" "get_size"

///|
#cfg(target="wasm-gc")
fn url_search_params_append_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "webapi_URLSearchParams" "append"

///|
#cfg(target="wasm-gc")
fn url_search_params_delete_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "webapi_URLSearchParams" "delete"

///|
#cfg(target="wasm-gc")
fn url_search_params_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_URLSearchParams" "get"

///|
#cfg(target="wasm-gc")
fn url_search_params_get_all_ffi_wasm(obj : JsValue, name : JsValue) -> JsArray = "webapi_URLSearchParams" "getAll"

///|
#cfg(target="wasm-gc")
fn url_search_params_get_all_ffi(
  obj : JsValue,
  name : JsValue,
) -> Array[String] {
  url_search_params_get_all_ffi_wasm(obj, name).to_string_array()
}

///|
#cfg(target="wasm-gc")
fn url_search_params_has_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Bool = "webapi_URLSearchParams" "has"

///|
#cfg(target="wasm-gc")
fn url_search_params_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "webapi_URLSearchParams" "set"

///|
#cfg(target="wasm-gc")
fn url_search_params_sort_ffi(obj : JsValue) -> Unit = "webapi_URLSearchParams" "sort"
