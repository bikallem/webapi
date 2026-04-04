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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLCollection] HTMLCollection::into(self : HTMLCollection) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLCollection] HTMLCollection::unsafe_into(
  self : HTMLCollection,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLCollection with constructor_name() {
  "HTMLCollection"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLCollection + HasConstructor] HTMLCollection::try_into(
  self : HTMLCollection,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLCollection for HTMLCollection

///|
/// [HTMLCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection) interface.
pub trait THTMLCollection: TJsValue {
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> Element? = _
  named_item_opt(self : Self, name : String) -> Element? = _
  item(self : Self, index : UInt) -> Element = _
  named_item(self : Self, name : String) -> Element = _
}

///|
/// [HTMLCollection.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection/length)
impl THTMLCollection with length(self : Self) -> UInt {
  html_collection_length_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLCollection.item](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection/item)
impl THTMLCollection with item_opt(self : Self, index : UInt) -> Element? {
  html_collection_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [HTMLCollection.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection/namedItem)
impl THTMLCollection with named_item_opt(self : Self, name : String) -> Element? {
  html_collection_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

///|
impl THTMLCollection with item(self : Self, index : UInt) -> Element {
  self.item_opt(index).unwrap()
}

///|
impl THTMLCollection with named_item(self : Self, name : String) -> Element {
  self.named_item_opt(name).unwrap()
}

///|
#cfg(target="js")
extern "js" fn html_collection_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn html_collection_length_ffi(obj : JsValue) -> UInt {
  html_collection_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_collection_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
extern "js" fn html_collection_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"

///|
#cfg(target="wasm-gc")
fn html_collection_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLCollection" "get_length"

///|
#cfg(target="wasm-gc")
fn html_collection_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_HTMLCollection" "item"

///|
#cfg(target="wasm-gc")
fn html_collection_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_HTMLCollection" "namedItem"
