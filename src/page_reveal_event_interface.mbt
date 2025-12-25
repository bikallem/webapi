// Do not edit. This file is generated.
// MoonBit type: PageRevealEvent
// Specifications: html.idl

///|
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
extern "js" fn page_reveal_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageRevealEvent = "(type_, event_init_dict) => new PageRevealEvent(type_, event_init_dict)"

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
pub trait TPageRevealEvent: TEvent {
  view_transition(self : Self) -> ViewTransition = _
}

///|
extern "js" fn page_reveal_event_view_transition_ffi(
  obj : JsValue,
) -> ViewTransition = "(obj) => obj.viewTransition"

///|
impl TPageRevealEvent with view_transition(self : Self) -> ViewTransition {
  page_reveal_event_view_transition_ffi(TJsValue::to_js(self))
}
