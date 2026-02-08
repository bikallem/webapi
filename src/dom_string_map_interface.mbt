// Do not edit. This file is generated.
// MoonBit type: DOMStringMap
// Specifications: html.idl

/// [DOMStringMap](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap)
#external
pub type DOMStringMap

pub impl TJsValue for DOMStringMap with to_js(self: DOMStringMap) -> JsValue = "%identity"

pub fn[T: TDOMStringMap] DOMStringMap::into(self : DOMStringMap) -> T = "%identity"

pub impl TDOMStringMap for DOMStringMap

/// [DOMStringMap](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap) interface.
pub trait TDOMStringMap: TJsValue {

}

