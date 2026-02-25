// Do not edit. This file is generated.
// MoonBit type: HTMLOptionsCollection
// Specifications: html.idl

///|
/// [HTMLOptionsCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection)
#external
pub type HTMLOptionsCollection

///|
pub impl TJsValue for HTMLOptionsCollection with to_js(
  self : HTMLOptionsCollection,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLOptionsCollection with from_js_any(value : JsAny) -> HTMLOptionsCollection = "%identity"

///|
pub fn[T : THTMLOptionsCollection] HTMLOptionsCollection::into(
  self : HTMLOptionsCollection,
) -> T = "%identity"

///|
pub impl THTMLOptionsCollection for HTMLOptionsCollection

///|
pub impl THTMLCollection for HTMLOptionsCollection

///|
pub(open) trait THTMLOptionsCollectionAddElement {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLOptionsCollectionAddElement for HTMLOptionElement with to_js(
  self : HTMLOptionElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOptionsCollectionAddElement for HTMLOptGroupElement with to_js(
  self : HTMLOptGroupElement,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLOptionsCollectionAddBefore {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLOptionsCollectionAddBefore for HTMLElement with to_js(
  self : HTMLElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOptionsCollectionAddBefore for Int with to_js(self : Int) -> JsValue {
  TJsValue::to_js(self)
}

///|
/// [HTMLOptionsCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection) interface.
pub trait THTMLOptionsCollection: THTMLCollection {
  length(self : Self) -> UInt = _
  set_length(self : Self, length : UInt) -> Unit = _
  set(self : Self, index : UInt, option : &THTMLOptionElement) -> Unit = _
  add(
    self : Self,
    element : &THTMLOptionsCollectionAddElement,
    before? : &THTMLOptionsCollectionAddBefore,
  ) -> Unit = _
  remove(self : Self, index : Int) -> Unit = _
  selected_index(self : Self) -> Int = _
  set_selected_index(self : Self, selected_index : Int) -> Unit = _
}

///|
/// [HTMLOptionsCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection/length)
impl THTMLOptionsCollection with length(self : Self) -> UInt {
  html_options_collection_length_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLOptionsCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection/length)
impl THTMLOptionsCollection with set_length(self : Self, length : UInt) -> Unit {
  html_options_collection_set_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(length),
  )
}

///|
/// [HTMLOptionsCollection.set](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection/set)
impl THTMLOptionsCollection with set(
  self : Self,
  index : UInt,
  option : &THTMLOptionElement,
) -> Unit {
  html_options_collection_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
    TJsValue::to_js(option),
  )
}

///|
/// [HTMLOptionsCollection.add](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection/add)
impl THTMLOptionsCollection with add(
  self : Self,
  element : &THTMLOptionsCollectionAddElement,
  before? : &THTMLOptionsCollectionAddBefore,
) -> Unit {
  html_options_collection_add_ffi(
    TJsValue::to_js(self),
    element.to_js(),
    match before {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [HTMLOptionsCollection.remove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection/remove)
impl THTMLOptionsCollection with remove(self : Self, index : Int) -> Unit {
  html_options_collection_remove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [HTMLOptionsCollection.selectedIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection/selectedIndex)
impl THTMLOptionsCollection with selected_index(self : Self) -> Int {
  html_options_collection_selected_index_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLOptionsCollection.selectedIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection/selectedIndex)
impl THTMLOptionsCollection with set_selected_index(
  self : Self,
  selected_index : Int,
) -> Unit {
  html_options_collection_set_selected_index_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selected_index),
  )
}
