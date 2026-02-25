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
pub fn[T : TDOMStringMap] DOMStringMap::into(self : DOMStringMap) -> T = "%identity"

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
  dom_string_map_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
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
