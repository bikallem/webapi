///|
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
#external
pub type HTMLAllCollectionItem

///|
pub fn[T : THTMLAllCollectionItem] HTMLAllCollectionItem::into(
  self : HTMLAllCollectionItem,
) -> T = "%identity"

///|
extern "js" fn html_all_collection_item_is_undefined_ffi(
  obj : HTMLAllCollectionItem,
) -> Bool = "(obj) => obj === undefined"

///|
pub fn HTMLAllCollectionItem::is_undefined(
  self : HTMLAllCollectionItem,
) -> Bool {
  html_all_collection_item_is_undefined_ffi(self)
}

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
pub trait THTMLAllCollection: TJsValue {
  item(self : Self, name_or_index? : String) -> HTMLAllCollectionItem = _
}

///|
extern "js" fn html_all_collection_item_ffi(
  obj : JsValue,
  name_or_index : JsValue,
) -> HTMLAllCollectionItem = "(obj, name_or_index) => obj.item(obj, name_or_index)"

///|
impl THTMLAllCollection with item(self : Self, name_or_index? : String) -> HTMLAllCollectionItem {
  html_all_collection_item_ffi(TJsValue::to_js(self), opt_to_js(name_or_index))
}
