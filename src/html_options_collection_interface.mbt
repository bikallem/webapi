///|
#external
pub type HTMLOptionsCollection

///|
pub impl TJsValue for HTMLOptionsCollection with to_js(
  self : HTMLOptionsCollection,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLOptionsCollection] HTMLOptionsCollection::into(
  self : HTMLOptionsCollection,
) -> T = "%identity"

///|
pub impl THTMLOptionsCollection for HTMLOptionsCollection

///|
pub impl THTMLCollection for HTMLOptionsCollection

///|
pub(open) trait THTMLOptionsCollectionAddElementArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLOptionsCollectionAddElementArg for HTMLOptionElement with to_js(
  self : HTMLOptionElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOptionsCollectionAddElementArg for HTMLOptGroupElement with to_js(
  self : HTMLOptGroupElement,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLOptionsCollectionAddBeforeArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLOptionsCollectionAddBeforeArg for HTMLElement with to_js(
  self : HTMLElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOptionsCollectionAddBeforeArg for Int with to_js(self : Int) -> JsValue = "%identity"

///|
pub trait THTMLOptionsCollection: THTMLCollection {
  add(
    self : Self,
    element : &THTMLOptionsCollectionAddElementArg,
    before? : &THTMLOptionsCollectionAddBeforeArg,
  ) -> Unit = _
  remove(self : Self, index : Int) -> Unit = _
}

///|
extern "js" fn html_options_collection_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "(obj, element, before) => obj.add(obj, element, before)"

///|
impl THTMLOptionsCollection with add(
  self : Self,
  element : &THTMLOptionsCollectionAddElementArg,
  before? : &THTMLOptionsCollectionAddBeforeArg = JsValue::null(),
) -> Unit {
  html_options_collection_add_ffi(
    TJsValue::to_js(self),
    element.to_js(),
    before.to_js(),
  )
}

///|
extern "js" fn html_options_collection_remove_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove(obj, index)"

///|
impl THTMLOptionsCollection with remove(self : Self, index : Int) -> Unit {
  html_options_collection_remove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}
