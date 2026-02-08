// Do not edit. This file is generated.
// MoonBit type: MediaQueryList
// Specifications: cssom-view.idl

///|
/// [MediaQueryList](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList)
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
/// [MediaQueryList](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList) interface.
pub trait TMediaQueryList: TEventTarget {
  media(self : Self) -> CSSOMString = _
  matches(self : Self) -> Bool = _
  add_listener(self : Self, callback : EventListener) -> Unit = _
  remove_listener(self : Self, callback : EventListener) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
}

///|
/// [MediaQueryList.media](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/media)
impl TMediaQueryList with media(self : Self) -> CSSOMString {
  media_query_list_media_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [MediaQueryList.matches](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/matches)
impl TMediaQueryList with matches(self : Self) -> Bool {
  media_query_list_matches_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [MediaQueryList.addListener](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/addListener)
impl TMediaQueryList with add_listener(self : Self, callback : EventListener) -> Unit {
  media_query_list_add_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(callback),
  )
}

///|
/// [MediaQueryList.removeListener](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/removeListener)
impl TMediaQueryList with remove_listener(self : Self, callback : EventListener) -> Unit {
  media_query_list_remove_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(callback),
  )
}

///|
/// [MediaQueryList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/onchange)
impl TMediaQueryList with onchange(self : Self) -> EventHandler {
  media_query_list_onchange_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [MediaQueryList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/onchange)
impl TMediaQueryList with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  media_query_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}
