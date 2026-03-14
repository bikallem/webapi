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
pub impl FromJsAny for MediaQueryList with from_js_any(value : JsAny) -> MediaQueryList = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TMediaQueryList] MediaQueryList::into(self : MediaQueryList) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TMediaQueryList] MediaQueryList::unsafe_into(
  self : MediaQueryList,
) -> T = "%identity"

///|
pub impl HasConstructor for MediaQueryList with constructor_name() {
  "MediaQueryList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TMediaQueryList + HasConstructor] MediaQueryList::try_into(
  self : MediaQueryList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TMediaQueryList for MediaQueryList

///|
pub impl TEventTarget for MediaQueryList

///|
/// [MediaQueryList](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList) interface.
pub trait TMediaQueryList: TEventTarget {
  media(self : Self) -> CSSOMString = _
  matches(self : Self) -> Bool = _
  add_listener(self : Self, callback : (Event) -> Unit) -> Unit = _
  remove_listener(self : Self, callback : (Event) -> Unit) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
}

///|
/// [MediaQueryList.media](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/media)
impl TMediaQueryList with media(self : Self) -> CSSOMString {
  media_query_list_media_ffi(TJsValue::to_js(self))
}

///|
/// [MediaQueryList.matches](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/matches)
impl TMediaQueryList with matches(self : Self) -> Bool {
  media_query_list_matches_ffi(TJsValue::to_js(self))
}

///|
/// [MediaQueryList.addListener](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/addListener)
impl TMediaQueryList with add_listener(self : Self, callback : (Event) -> Unit) -> Unit {
  media_query_list_add_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_listener_ffi(callback)),
  )
}

///|
/// [MediaQueryList.removeListener](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/removeListener)
impl TMediaQueryList with remove_listener(
  self : Self,
  callback : (Event) -> Unit,
) -> Unit {
  media_query_list_remove_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_listener_ffi(callback)),
  )
}

///|
/// [MediaQueryList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/onchange)
impl TMediaQueryList with onchange(self : Self) -> EventHandler {
  media_query_list_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [MediaQueryList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList/onchange)
impl TMediaQueryList with set_onchange(
  self : Self,
  onchange : (Event) -> JsValue,
) -> Unit {
  media_query_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
#cfg(target="js")
extern "js" fn media_query_list_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn media_query_list_media_ffi(obj : JsValue) -> CSSOMString {
  media_query_list_media_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn media_query_list_matches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.matches"

///|
#cfg(target="js")
fn media_query_list_matches_ffi(obj : JsValue) -> Bool {
  media_query_list_matches_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn media_query_list_add_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.addListener(callback)"

///|
#cfg(target="js")
extern "js" fn media_query_list_remove_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.removeListener(callback)"

///|
#cfg(target="js")
extern "js" fn media_query_list_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn media_query_list_onchange_ffi(obj : JsValue) -> EventHandler {
  media_query_list_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn media_query_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="wasm-gc")
fn media_query_list_media_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MediaQueryList" "get_media"

///|
#cfg(target="wasm-gc")
fn media_query_list_media_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(media_query_list_media_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn media_query_list_matches_ffi(obj : JsValue) -> Bool = "webapi_MediaQueryList" "get_matches"

///|
#cfg(target="wasm-gc")
fn media_query_list_add_listener_ffi(obj : JsValue, callback : JsValue) -> Unit = "webapi_MediaQueryList" "addListener"

///|
#cfg(target="wasm-gc")
fn media_query_list_remove_listener_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "webapi_MediaQueryList" "removeListener"

///|
#cfg(target="wasm-gc")
fn media_query_list_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MediaQueryList" "get_onchange"

///|
#cfg(target="wasm-gc")
fn media_query_list_onchange_ffi(obj : JsValue) -> EventHandler {
  media_query_list_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn media_query_list_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_MediaQueryList" "set_onchange"
