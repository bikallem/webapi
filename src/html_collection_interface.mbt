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
pub impl FromJsAny for HTMLCollection with from_js_any(value : JsAny) -> HTMLCollection = "%identity"

///|
pub fn[T : THTMLCollection] HTMLCollection::into(self : HTMLCollection) -> T = "%identity"

///|
pub impl THTMLCollection for HTMLCollection

///|
/// [HTMLCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection) interface.
pub trait THTMLCollection: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> Element? = _
  named_item(self : Self, name : String) -> Element? = _
}

///|
/// [HTMLCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection/length)
impl THTMLCollection with length(self : Self) -> UInt {
  html_collection_length_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLCollection.item](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection/item)
impl THTMLCollection with item(self : Self, index : UInt) -> Element? {
  let result = html_collection_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [HTMLCollection.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection/namedItem)
impl THTMLCollection with named_item(self : Self, name : String) -> Element? {
  let result = html_collection_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
