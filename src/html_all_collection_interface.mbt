// Do not edit. This file is generated.
// MoonBit type: HTMLAllCollection
// Specifications: html.idl

///|
/// [HTMLAllCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection)
#external
pub type HTMLAllCollection

///|
pub impl TJsValue for HTMLAllCollection with to_js(self : HTMLAllCollection) -> JsValue = "%identity"

///|
pub fn[T : THTMLAllCollection] HTMLAllCollection::into(
  self : HTMLAllCollection,
) -> T = "%identity"

///|
pub impl THTMLAllCollection for HTMLAllCollection

///|
/// [HTMLAllCollectionItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollectionItem)
#external
pub type HTMLAllCollectionItem

///|
pub fn[T : THTMLAllCollectionItem] HTMLAllCollectionItem::into(
  self : HTMLAllCollectionItem,
) -> T = "%identity"

///|
pub impl THTMLAllCollectionItem for HTMLAllCollectionItem with to_js(
  self : HTMLAllCollectionItem,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLAllCollectionItem {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLAllCollectionItem for HTMLCollection with to_js(
  self : HTMLCollection,
) -> JsValue = "%identity"

///|
pub impl THTMLAllCollectionItem for Element with to_js(self : Element) -> JsValue = "%identity"

///|
/// [HTMLAllCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection) interface.
pub trait THTMLAllCollection: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, name_or_index? : String) -> HTMLAllCollectionItem? = _
}

///|
/// [HTMLAllCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/length)
impl THTMLAllCollection with length(self : Self) -> UInt {
  html_all_collection_length_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAllCollection.item](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/item)
impl THTMLAllCollection with item(self : Self, name_or_index? : String) -> HTMLAllCollectionItem? {
  let result = html_all_collection_item_ffi(
    TJsValue::to_js(self),
    opt_to_js(name_or_index),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
