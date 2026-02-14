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
pub impl FromJsAny for HTMLAllCollection with from_js_any(value : JsAny) -> HTMLAllCollection = "%identity"

///|
pub fn[T : THTMLAllCollection] HTMLAllCollection::into(
  self : HTMLAllCollection,
) -> T = "%identity"

///|
pub impl THTMLAllCollection for HTMLAllCollection

///|
/// [HTMLAllCollectionNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollectionNamedItem)
#external
pub type HTMLAllCollectionNamedItem

///|
pub fn[T : THTMLAllCollectionNamedItem] HTMLAllCollectionNamedItem::into(
  self : HTMLAllCollectionNamedItem,
) -> T = "%identity"

///|
pub impl THTMLAllCollectionNamedItem for HTMLAllCollectionNamedItem with to_js(
  self : HTMLAllCollectionNamedItem,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLAllCollectionNamedItem {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLAllCollectionNamedItem for HTMLCollection with to_js(
  self : HTMLCollection,
) -> JsValue = "%identity"

///|
pub impl THTMLAllCollectionNamedItem for Element with to_js(self : Element) -> JsValue = "%identity"

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
  get(self : Self, index : UInt) -> Element? = _
  named_item(self : Self, name : String) -> HTMLAllCollectionNamedItem? = _
  item(self : Self, name_or_index? : String) -> HTMLAllCollectionItem? = _
}

///|
/// [HTMLAllCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/length)
impl THTMLAllCollection with length(self : Self) -> UInt {
  html_all_collection_length_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAllCollection.get](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/get)
impl THTMLAllCollection with get(self : Self, index : UInt) -> Element? {
  let result = html_all_collection_get_ffi(
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
/// [HTMLAllCollection.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/namedItem)
impl THTMLAllCollection with named_item(self : Self, name : String) -> HTMLAllCollectionNamedItem? {
  let result = html_all_collection_named_item_ffi(
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
