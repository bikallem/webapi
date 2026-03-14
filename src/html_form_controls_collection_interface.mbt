// Do not edit. This file is generated.
// MoonBit type: HTMLFormControlsCollection
// Specifications: html.idl

///|
/// [HTMLFormControlsCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection)
#external
pub type HTMLFormControlsCollection

///|
pub impl TJsValue for HTMLFormControlsCollection with to_js(
  self : HTMLFormControlsCollection,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLFormControlsCollection with from_js_any(
  value : JsAny,
) -> HTMLFormControlsCollection = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLFormControlsCollection] HTMLFormControlsCollection::into(
  self : HTMLFormControlsCollection,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLFormControlsCollection] HTMLFormControlsCollection::unsafe_into(
  self : HTMLFormControlsCollection,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLFormControlsCollection with constructor_name() {
  "HTMLFormControlsCollection"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLFormControlsCollection + HasConstructor] HTMLFormControlsCollection::try_into(
  self : HTMLFormControlsCollection,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLFormControlsCollection for HTMLFormControlsCollection

///|
pub impl THTMLCollection for HTMLFormControlsCollection

///|
#external
pub type HTMLFormControlsCollectionNamedItem

///|
pub impl TJsValue for HTMLFormControlsCollectionNamedItem with to_js(
  self : HTMLFormControlsCollectionNamedItem,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLFormControlsCollectionNamedItem with from_js_any(
  value : JsAny,
) -> HTMLFormControlsCollectionNamedItem = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLFormControlsCollectionNamedItem + FromJsAny] HTMLFormControlsCollectionNamedItem::into(
  self : HTMLFormControlsCollectionNamedItem,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : THTMLFormControlsCollectionNamedItem + FromJsAny] HTMLFormControlsCollectionNamedItem::unsafe_into(
  self : HTMLFormControlsCollectionNamedItem,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : THTMLFormControlsCollectionNamedItem] HTMLFormControlsCollectionNamedItem::from(
  value : T,
) -> HTMLFormControlsCollectionNamedItem = "%identity"

///|
pub impl THTMLFormControlsCollectionNamedItem for HTMLFormControlsCollectionNamedItem

///|
pub(open) trait THTMLFormControlsCollectionNamedItem: TJsValue {}

///|
pub impl THTMLFormControlsCollectionNamedItem for RadioNodeList

///|
pub impl THTMLFormControlsCollectionNamedItem for Element

///|
/// [HTMLFormControlsCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection) interface.
pub trait THTMLFormControlsCollection: THTMLCollection {
  named_item(self : Self, name : String) -> HTMLFormControlsCollectionNamedItem? = _
}

///|
/// [HTMLFormControlsCollection.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection/namedItem)
impl THTMLFormControlsCollection with named_item(self : Self, name : String) -> HTMLFormControlsCollectionNamedItem? {
  html_form_controls_collection_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  ).to_option()
}

///|
#cfg(target="js")
extern "js" fn html_form_controls_collection_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"

///|
#cfg(target="wasm-gc")
fn html_form_controls_collection_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "webapi_HTMLFormControlsCollection" "namedItem"
