// Do not edit. This file is generated.
// MoonBit type: DOMStringMap
// Specifications: html.idl

///|
/// [DOMStringMap](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap)
#external
pub type DOMStringMap

///|
pub impl TJsValue for DOMStringMap with to_js(self : DOMStringMap) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMStringMap with from_js_any(value : JsAny) -> DOMStringMap = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDOMStringMap] DOMStringMap::into(self : DOMStringMap) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDOMStringMap] DOMStringMap::unsafe_into(self : DOMStringMap) -> T = "%identity"

///|
pub impl HasConstructor for DOMStringMap with constructor_name() {
  "DOMStringMap"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMStringMap + HasConstructor] DOMStringMap::try_into(
  self : DOMStringMap,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TDOMStringMap for DOMStringMap

///|
/// [DOMStringMap](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap) interface.
pub trait TDOMStringMap: TJsValue {
  get(self : Self, name : String) -> String? = _
  set(self : Self, name : String, value : String) -> Unit = _
  delete_(self : Self, name : String) -> Unit = _
}

///|
/// [DOMStringMap.get](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap/get)
impl TDOMStringMap with get(self : Self, name : String) -> String? {
  dom_string_map_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option_prim()
}

///|
/// [DOMStringMap.set](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap/set)
impl TDOMStringMap with set(self : Self, name : String, value : String) -> Unit {
  dom_string_map_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
/// [DOMStringMap.delete_](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap/delete_)
impl TDOMStringMap with delete_(self : Self, name : String) -> Unit {
  dom_string_map_delete__ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
#cfg(target="js")
extern "js" fn dom_string_map_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj[name]"

///|
#cfg(target="js")
extern "js" fn dom_string_map_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => { obj[name] = value; }"

///|
#cfg(target="js")
extern "js" fn dom_string_map_delete__ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { delete obj[name]; }"

///|
#cfg(target="wasm-gc")
fn dom_string_map_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_DOMStringMap" "get"

///|
#cfg(target="wasm-gc")
fn dom_string_map_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "webapi_DOMStringMap" "set"

///|
#cfg(target="wasm-gc")
fn dom_string_map_delete__ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_DOMStringMap" "delete_"
