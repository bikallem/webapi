// Do not edit. This file is generated.
// MoonBit type: HTMLCollection
// Specifications: dom.idl

///|
/// [HTMLCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection)
#external
pub type HTMLCollection

///|
pub impl TJsValue for HTMLCollection with to_js(self : HTMLCollection) -> JsValue = "%identity"

///|
pub fn[T : THTMLCollection] HTMLCollection::into(self : HTMLCollection) -> T = "%identity"

///|
pub impl THTMLCollection for HTMLCollection

///|
/// [HTMLCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection) interface.
pub trait THTMLCollection: TJsValue {
  length(self : Self) -> UInt = _
}

///|
/// [HTMLCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection/length)
impl THTMLCollection with length(self : Self) -> UInt {
  html_collection_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}
