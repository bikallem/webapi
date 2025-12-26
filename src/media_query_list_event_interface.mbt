// Do not edit. This file is generated.
// MoonBit type: MediaQueryListEvent
// Specifications: cssom-view.idl

///|
#external
pub type MediaQueryListEvent

///|
pub impl TJsValue for MediaQueryListEvent with to_js(self : MediaQueryListEvent) -> JsValue = "%identity"

///|
pub fn[T : TMediaQueryListEvent] MediaQueryListEvent::into(
  self : MediaQueryListEvent,
) -> T = "%identity"

///|
pub impl TMediaQueryListEvent for MediaQueryListEvent

///|
pub impl TEvent for MediaQueryListEvent

///|
extern "js" fn media_query_list_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MediaQueryListEvent = "(type_, event_init_dict) => new MediaQueryListEvent(type_, event_init_dict)"

///|
pub fn MediaQueryListEvent::new(
  type_ : CSSOMString,
  event_init_dict? : MediaQueryListEventInit = MediaQueryListEventInit::empty(),
) -> MediaQueryListEvent {
  media_query_list_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TMediaQueryListEvent: TEvent {
  media(self : Self) -> CSSOMString = _
  matches(self : Self) -> Bool = _
}

///|
extern "js" fn media_query_list_event_media_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.media"

///|
impl TMediaQueryListEvent with media(self : Self) -> CSSOMString {
  media_query_list_event_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn media_query_list_event_matches_ffi(obj : JsValue) -> Bool = "(obj) => obj.matches"

///|
impl TMediaQueryListEvent with matches(self : Self) -> Bool {
  media_query_list_event_matches_ffi(TJsValue::to_js(self))
}
