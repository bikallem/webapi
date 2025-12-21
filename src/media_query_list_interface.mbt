///|
#external
pub type MediaQueryList

///|
pub impl TJsValue for MediaQueryList with to_js(self : MediaQueryList) -> JsValue = "%identity"

///|
pub fn[T : TMediaQueryList] MediaQueryList::into(self : MediaQueryList) -> T = "%identity"

///|
pub impl TMediaQueryList for MediaQueryList

///|
pub impl TEventTarget for MediaQueryList

///|
pub trait TMediaQueryList: TEventTarget {
  add_listener(self : Self, callback : EventListener) -> Unit = _
  remove_listener(self : Self, callback : EventListener) -> Unit = _
}

///|
extern "js" fn media_query_list_add_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.addListener(obj, callback)"

///|
impl TMediaQueryList with add_listener(self : Self, callback : EventListener) -> Unit {
  media_query_list_add_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(callback),
  )
}

///|
extern "js" fn media_query_list_remove_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.removeListener(obj, callback)"

///|
impl TMediaQueryList with remove_listener(self : Self, callback : EventListener) -> Unit {
  media_query_list_remove_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(callback),
  )
}
