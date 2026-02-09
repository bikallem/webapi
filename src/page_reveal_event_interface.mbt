// Do not edit. This file is generated.
// MoonBit type: PageRevealEvent
// Specifications: html.idl

///|
/// [PageRevealEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEvent)
#external
pub type PageRevealEvent

///|
pub impl TJsValue for PageRevealEvent with to_js(self : PageRevealEvent) -> JsValue = "%identity"

///|
pub fn[T : TPageRevealEvent] PageRevealEvent::into(self : PageRevealEvent) -> T = "%identity"

///|
pub impl TPageRevealEvent for PageRevealEvent

///|
pub impl TEvent for PageRevealEvent

///|
pub fn PageRevealEvent::new(
  type_ : String,
  event_init_dict? : PageRevealEventInit = PageRevealEventInit::empty(),
) -> PageRevealEvent {
  page_reveal_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [PageRevealEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEvent) interface.
pub trait TPageRevealEvent: TEvent {
  view_transition(self : Self) -> ViewTransition = _
}

///|
/// [PageRevealEvent.viewTransition](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEvent/viewTransition)
impl TPageRevealEvent with view_transition(self : Self) -> ViewTransition {
  page_reveal_event_view_transition_ffi(TJsValue::to_js(self))
}
