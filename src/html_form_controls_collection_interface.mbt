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
pub fn[T : THTMLFormControlsCollection] HTMLFormControlsCollection::into(
  self : HTMLFormControlsCollection,
) -> T = "%identity"

///|
pub impl THTMLFormControlsCollection for HTMLFormControlsCollection

///|
pub impl THTMLCollection for HTMLFormControlsCollection

///|
/// [HTMLFormControlsCollectionNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollectionNamedItem)
#external
pub type HTMLFormControlsCollectionNamedItem

///|
pub fn[T : THTMLFormControlsCollectionNamedItem] HTMLFormControlsCollectionNamedItem::into(
  self : HTMLFormControlsCollectionNamedItem,
) -> T = "%identity"

///|
pub impl THTMLFormControlsCollectionNamedItem for HTMLFormControlsCollectionNamedItem with to_js(
  self : HTMLFormControlsCollectionNamedItem,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLFormControlsCollectionNamedItem {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLFormControlsCollectionNamedItem for RadioNodeList with to_js(
  self : RadioNodeList,
) -> JsValue = "%identity"

///|
pub impl THTMLFormControlsCollectionNamedItem for Element with to_js(
  self : Element,
) -> JsValue = "%identity"

///|
/// [HTMLFormControlsCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection) interface.
pub trait THTMLFormControlsCollection: THTMLCollection {
  named_item(self : Self, name : String) -> HTMLFormControlsCollectionNamedItem? = _
}

///|
/// [HTMLFormControlsCollection.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection/namedItem)
impl THTMLFormControlsCollection with named_item(self : Self, name : String) -> HTMLFormControlsCollectionNamedItem? {
  let result = html_form_controls_collection_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
