// Do not edit. This file is generated.
// MoonBit type: MediaQueryList
// Specifications: cssom-view.idl

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
  media(self : Self) -> String = _
  matches(self : Self) -> Bool = _
  add_listener(self : Self, callback : EventListener) -> Unit = _
  remove_listener(self : Self, callback : EventListener) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
}

///|
extern "js" fn media_query_list_media_ffi(obj : JsValue) -> String = "(obj) => obj.media"

///|
impl TMediaQueryList with media(self : Self) -> String {
  media_query_list_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn media_query_list_matches_ffi(obj : JsValue) -> Bool = "(obj) => obj.matches"

///|
impl TMediaQueryList with matches(self : Self) -> Bool {
  media_query_list_matches_ffi(TJsValue::to_js(self))
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

///|
extern "js" fn media_query_list_onchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onchange"

///|
impl TMediaQueryList with onchange(self : Self) -> EventHandler {
  media_query_list_onchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn media_query_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
impl TMediaQueryList with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  media_query_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}
