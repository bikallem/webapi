// Do not edit. This file is generated.
// MoonBit type: DOMStringMap
// Specifications: html.idl

///|
#external
pub type DOMStringMap

///|
pub impl TJsValue for DOMStringMap with to_js(self : DOMStringMap) -> JsValue = "%identity"

///|
pub fn[T : TDOMStringMap] DOMStringMap::into(self : DOMStringMap) -> T = "%identity"

///|
pub impl TDOMStringMap for DOMStringMap

///|
pub trait TDOMStringMap: TJsValue {}
