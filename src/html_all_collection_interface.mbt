// Do not edit. This file is generated.
// MoonBit type: HTMLAllCollection
// Specifications: html.idl

/// [HTMLAllCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection)
#external
pub type HTMLAllCollection

pub impl TJsValue for HTMLAllCollection with to_js(self: HTMLAllCollection) -> JsValue = "%identity"

pub impl FromJsAny for HTMLAllCollection with from_js_any(value : JsAny) -> HTMLAllCollection = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLAllCollection] HTMLAllCollection::into(self : HTMLAllCollection) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLAllCollection] HTMLAllCollection::unsafe_into(self : HTMLAllCollection) -> T = "%identity"

pub impl HasConstructor for HTMLAllCollection with constructor_name() { "HTMLAllCollection" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLAllCollection + HasConstructor] HTMLAllCollection::try_into(self : HTMLAllCollection) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLAllCollection for HTMLAllCollection

#external
pub type HTMLAllCollectionNamedItem

pub impl TJsValue for HTMLAllCollectionNamedItem with to_js(self: HTMLAllCollectionNamedItem) -> JsValue = "%identity"

pub impl FromJsAny for HTMLAllCollectionNamedItem with from_js_any(value : JsAny) -> HTMLAllCollectionNamedItem = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLAllCollectionNamedItem + FromJsAny] HTMLAllCollectionNamedItem::into(self : HTMLAllCollectionNamedItem) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : THTMLAllCollectionNamedItem + FromJsAny] HTMLAllCollectionNamedItem::unsafe_into(self : HTMLAllCollectionNamedItem) -> T {
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

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLAllCollectionItem + FromJsAny] HTMLAllCollectionItem::into(self : HTMLAllCollectionItem) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : THTMLAllCollectionItem + FromJsAny] HTMLAllCollectionItem::unsafe_into(self : HTMLAllCollectionItem) -> T {
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

#cfg(target="js")
extern "js" fn html_all_collection_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn html_all_collection_length_ffi(obj: JsValue) -> UInt {
  html_all_collection_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_all_collection_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj[index]"

#cfg(target="js")
extern "js" fn html_all_collection_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.namedItem(name)"

#cfg(target="js")
extern "js" fn html_all_collection_item_ffi(obj: JsValue, name_or_index: JsValue) -> JsValue = "(obj, name_or_index) => obj.item(name_or_index)"

#cfg(target="wasm-gc")
fn html_all_collection_length_ffi(obj: JsValue) -> UInt = "webapi_HTMLAllCollection" "get_length"

#cfg(target="wasm-gc")
fn html_all_collection_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_HTMLAllCollection" "get"

#cfg(target="wasm-gc")
fn html_all_collection_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_HTMLAllCollection" "namedItem"

#cfg(target="wasm-gc")
fn html_all_collection_item_ffi(obj: JsValue, name_or_index: JsValue) -> JsValue = "webapi_HTMLAllCollection" "item"