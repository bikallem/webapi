///|
#external
pub type MediaList

///|
pub impl TJsValue for MediaList with to_js(self : MediaList) -> JsValue = "%identity"

///|
pub fn[T : TMediaList] MediaList::into(self : MediaList) -> T = "%identity"

///|
pub impl TMediaList for MediaList

///|
pub trait TMediaList: TJsValue {
  append_medium(self : Self, medium : CSSOMString) -> Unit = _
  delete_medium(self : Self, medium : CSSOMString) -> Unit = _
}

///|
extern "js" fn media_list_append_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.appendMedium(obj, medium)"

///|
impl TMediaList with append_medium(self : Self, medium : CSSOMString) -> Unit {
  media_list_append_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}

///|
extern "js" fn media_list_delete_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.deleteMedium(obj, medium)"

///|
impl TMediaList with delete_medium(self : Self, medium : CSSOMString) -> Unit {
  media_list_delete_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}
