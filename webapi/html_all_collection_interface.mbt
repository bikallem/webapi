// Do not edit. This file is generated.
// MoonBit type: HTMLAllCollection
// Specifications: html.idl

/// [HTMLAllCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection)
#external
pub type HTMLAllCollection

pub impl TJsValue for HTMLAllCollection with to_js(self: HTMLAllCollection) -> JsValue = "%identity"

pub impl FromJsAny for HTMLAllCollection with from_js_any(value : JsAny) -> HTMLAllCollection = "%identity"

pub fn[T: THTMLAllCollection] HTMLAllCollection::into(self : HTMLAllCollection) -> T = "%identity"

pub impl THTMLAllCollection for HTMLAllCollection

#external
pub type HTMLAllCollectionNamedItem

pub impl TJsValue for HTMLAllCollectionNamedItem with to_js(self: HTMLAllCollectionNamedItem) -> JsValue = "%identity"

pub impl FromJsAny for HTMLAllCollectionNamedItem with from_js_any(value : JsAny) -> HTMLAllCollectionNamedItem = "%identity"

pub fn[T : THTMLAllCollectionNamedItem + FromJsAny] HTMLAllCollectionNamedItem::into(self : HTMLAllCollectionNamedItem) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : THTMLAllCollectionNamedItem] HTMLAllCollectionNamedItem::from(value : T) -> HTMLAllCollectionNamedItem = "%identity"

pub impl THTMLAllCollectionNamedItem for HTMLAllCollectionNamedItem

pub(open) trait THTMLAllCollectionNamedItem : TJsValue {}

pub impl THTMLAllCollectionNamedItem for HTMLCollection

pub impl THTMLAllCollectionNamedItem for Element

#external
pub type HTMLAllCollectionItem

pub impl TJsValue for HTMLAllCollectionItem with to_js(self: HTMLAllCollectionItem) -> JsValue = "%identity"

pub impl FromJsAny for HTMLAllCollectionItem with from_js_any(value : JsAny) -> HTMLAllCollectionItem = "%identity"

pub fn[T : THTMLAllCollectionItem + FromJsAny] HTMLAllCollectionItem::into(self : HTMLAllCollectionItem) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : THTMLAllCollectionItem] HTMLAllCollectionItem::from(value : T) -> HTMLAllCollectionItem = "%identity"

pub impl THTMLAllCollectionItem for HTMLAllCollectionItem

pub(open) trait THTMLAllCollectionItem : TJsValue {}

pub impl THTMLAllCollectionItem for HTMLCollection

pub impl THTMLAllCollectionItem for Element

/// [HTMLAllCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection) interface.
pub trait THTMLAllCollection: TJsValue {
  length(self : Self) -> UInt = _
  get_opt(self : Self, index : UInt) -> Element? = _
  named_item(self : Self, name : String) -> HTMLAllCollectionNamedItem? = _
  item(self : Self, name_or_index? : String) -> HTMLAllCollectionItem? = _
  get(self : Self, index : UInt) -> Element = _
}

/// [HTMLAllCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/length)
impl THTMLAllCollection with length(self : Self) -> UInt {
  html_all_collection_length_ffi(TJsValue::to_js(self))
}

/// [HTMLAllCollection.get](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/get)
impl THTMLAllCollection with get_opt(self : Self, 
index : UInt) -> Element? {
  html_all_collection_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [HTMLAllCollection.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/namedItem)
impl THTMLAllCollection with named_item(self : Self, 
name : String) -> HTMLAllCollectionNamedItem? {
  html_all_collection_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

/// [HTMLAllCollection.item](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection/item)
impl THTMLAllCollection with item(self : Self, 
name_or_index? : String) -> HTMLAllCollectionItem? {
  html_all_collection_item_ffi(TJsValue::to_js(self), opt_to_js(name_or_index)).to_option()
}

impl THTMLAllCollection with get(self : Self, 
index : UInt) -> Element {
  self.get_opt(index).unwrap()
}