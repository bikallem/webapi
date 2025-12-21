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
pub trait THTMLAllCollection: TJsValue {
  item(self : Self, name_or_index? : String) -> JsValue = _
}

///|
extern "js" fn html_all_collection_item_ffi(
  obj : JsValue,
  name_or_index : JsValue,
) -> JsValue = "(obj, name_or_index) => obj.item(obj, name_or_index)"

///|
impl THTMLAllCollection with item(self : Self, name_or_index? : String) -> JsValue {
  html_all_collection_item_ffi(TJsValue::to_js(self), opt_to_js(name_or_index))
}
