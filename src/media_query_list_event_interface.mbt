// Do not edit. This file is generated.
// MoonBit type: MediaQueryListEvent
// Specifications: cssom-view.idl

///|
/// [MediaQueryListEvent](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent)
#external
pub type MediaQueryListEvent

///|
pub impl TJsValue for MediaQueryListEvent with to_js(self : MediaQueryListEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for MediaQueryListEvent with from_js_any(value : JsAny) -> MediaQueryListEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TMediaQueryListEvent] MediaQueryListEvent::into(
  self : MediaQueryListEvent,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TMediaQueryListEvent] MediaQueryListEvent::unsafe_into(
  self : MediaQueryListEvent,
) -> T = "%identity"

///|
pub impl HasConstructor for MediaQueryListEvent with constructor_name() {
  "MediaQueryListEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TMediaQueryListEvent + HasConstructor] MediaQueryListEvent::try_into(
  self : MediaQueryListEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TMediaQueryListEvent for MediaQueryListEvent

///|
pub impl TEvent for MediaQueryListEvent

///|
pub fn MediaQueryListEvent::new(
  type_ : CSSOMString,
  event_init_dict? : MediaQueryListEventInit,
) -> MediaQueryListEvent {
  media_query_list_event_new_ffi(
    TJsValue::to_js(type_),
    opt_to_js(event_init_dict),
  )
}

///|
/// [MediaQueryListEvent](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent) interface.
pub trait TMediaQueryListEvent: TEvent {
  media(self : Self) -> CSSOMString = _
  matches(self : Self) -> Bool = _
}

///|
/// [MediaQueryListEvent.media](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent/media)
impl TMediaQueryListEvent with media(self : Self) -> CSSOMString {
  media_query_list_event_media_ffi(TJsValue::to_js(self))
}

///|
/// [MediaQueryListEvent.matches](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent/matches)
impl TMediaQueryListEvent with matches(self : Self) -> Bool {
  media_query_list_event_matches_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn media_query_list_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MediaQueryListEvent = "(type_, event_init_dict) => new MediaQueryListEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn media_query_list_event_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn media_query_list_event_media_ffi(obj : JsValue) -> CSSOMString {
  media_query_list_event_media_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn media_query_list_event_matches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.matches"

///|
#cfg(target="js")
fn media_query_list_event_matches_ffi(obj : JsValue) -> Bool {
  media_query_list_event_matches_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn media_query_list_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MediaQueryListEvent = "webapi_MediaQueryListEvent" "new"

///|
#cfg(target="wasm-gc")
fn media_query_list_event_media_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MediaQueryListEvent" "get_media"

///|
#cfg(target="wasm-gc")
fn media_query_list_event_media_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(media_query_list_event_media_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn media_query_list_event_matches_ffi(obj : JsValue) -> Bool = "webapi_MediaQueryListEvent" "get_matches"
