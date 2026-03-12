// Do not edit. This file is generated.
// MoonBit type: PageTransitionEvent
// Specifications: html.idl

/// [PageTransitionEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent)
#external
pub type PageTransitionEvent

pub impl TJsValue for PageTransitionEvent with to_js(self: PageTransitionEvent) -> JsValue = "%identity"

pub impl FromJsAny for PageTransitionEvent with from_js_any(value : JsAny) -> PageTransitionEvent = "%identity"

pub fn[T: TPageTransitionEvent] PageTransitionEvent::into(self : PageTransitionEvent) -> T = "%identity"

pub impl TPageTransitionEvent for PageTransitionEvent

pub impl TEvent for PageTransitionEvent

pub fn PageTransitionEvent::new(type_ : String, 
event_init_dict? : PageTransitionEventInit) -> PageTransitionEvent {
  page_transition_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [PageTransitionEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent) interface.
pub trait TPageTransitionEvent: TEvent {
  persisted(self : Self) -> Bool = _
}

/// [PageTransitionEvent.persisted](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent/persisted)
impl TPageTransitionEvent with persisted(self : Self) -> Bool {
  page_transition_event_persisted_ffi(TJsValue::to_js(self))
}