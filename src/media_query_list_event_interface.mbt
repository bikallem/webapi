// Do not edit. This file is generated.
// MoonBit type: MediaQueryListEvent
// Specifications: cssom-view.idl

/// [MediaQueryListEvent](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent)
#external
pub type MediaQueryListEvent

pub impl TJsValue for MediaQueryListEvent with to_js(self: MediaQueryListEvent) -> JsValue = "%identity"

pub fn[T: TMediaQueryListEvent] MediaQueryListEvent::into(self : MediaQueryListEvent) -> T = "%identity"

pub impl TMediaQueryListEvent for MediaQueryListEvent

pub impl TEvent for MediaQueryListEvent

pub fn MediaQueryListEvent::new(type_ : CSSOMString, 
event_init_dict? : MediaQueryListEventInit = MediaQueryListEventInit::empty()) -> MediaQueryListEvent {
  media_query_list_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [MediaQueryListEvent](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent) interface.
pub trait TMediaQueryListEvent: TEvent {
  media(self : Self) -> CSSOMString = _
  matches(self : Self) -> Bool = _
}

/// [MediaQueryListEvent.media](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent/media)
impl TMediaQueryListEvent with media(self : Self) -> CSSOMString {
  media_query_list_event_media_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MediaQueryListEvent.matches](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEvent/matches)
impl TMediaQueryListEvent with matches(self : Self) -> Bool {
  media_query_list_event_matches_ffi(TJsValue::to_js(self)).unsafe_cast()
}