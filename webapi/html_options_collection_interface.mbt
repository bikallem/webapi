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
pub(open) trait THTMLOptionsCollectionAddElement: TJsValue {}

///|
pub impl THTMLOptionsCollectionAddElement for HTMLOptionElement

///|
pub impl THTMLOptionsCollectionAddElement for HTMLOptGroupElement

///|
pub(open) trait THTMLOptionsCollectionAddBefore: TJsValue {}

///|
pub impl THTMLOptionsCollectionAddBefore for HTMLElement

///|
pub impl THTMLOptionsCollectionAddBefore for Int

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

///|
#cfg(target="js")
extern "js" fn html_options_collection_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn html_options_collection_length_ffi(obj : JsValue) -> UInt {
  html_options_collection_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_options_collection_set_length_ffi(
  obj : JsValue,
  length : JsValue,
) -> Unit = "(obj, length) => { obj.length = length; }"

///|
#cfg(target="js")
extern "js" fn html_options_collection_set_ffi(
  obj : JsValue,
  index : JsValue,
  option : JsValue,
) -> Unit = "(obj, index, option) => { obj[index] = option; }"

///|
#cfg(target="js")
extern "js" fn html_options_collection_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "(obj, element, before) => obj.add(element, before)"

///|
#cfg(target="js")
extern "js" fn html_options_collection_remove_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove(index)"

///|
#cfg(target="js")
extern "js" fn html_options_collection_selected_index_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.selectedIndex"

///|
#cfg(target="js")
fn html_options_collection_selected_index_ffi(obj : JsValue) -> Int {
  html_options_collection_selected_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_options_collection_set_selected_index_ffi(
  obj : JsValue,
  selected_index : JsValue,
) -> Unit = "(obj, selectedIndex) => { obj.selectedIndex = selectedIndex; }"

///|
#cfg(target="wasm-gc")
fn html_options_collection_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLOptionsCollection" "get_length"

///|
#cfg(target="wasm-gc")
fn html_options_collection_set_length_ffi(
  obj : JsValue,
  length : JsValue,
) -> Unit = "webapi_HTMLOptionsCollection" "set_length"

///|
#cfg(target="wasm-gc")
fn html_options_collection_set_ffi(
  obj : JsValue,
  index : JsValue,
  option : JsValue,
) -> Unit = "webapi_HTMLOptionsCollection" "set"

///|
#cfg(target="wasm-gc")
fn html_options_collection_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "webapi_HTMLOptionsCollection" "add"

///|
#cfg(target="wasm-gc")
fn html_options_collection_remove_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLOptionsCollection" "remove"

///|
#cfg(target="wasm-gc")
fn html_options_collection_selected_index_ffi(obj : JsValue) -> Int = "webapi_HTMLOptionsCollection" "get_selectedIndex"

///|
#cfg(target="wasm-gc")
fn html_options_collection_set_selected_index_ffi(
  obj : JsValue,
  selected_index : JsValue,
) -> Unit = "webapi_HTMLOptionsCollection" "set_selectedIndex"
