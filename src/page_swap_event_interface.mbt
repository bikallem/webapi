// Do not edit. This file is generated.
// MoonBit type: PageSwapEvent
// Specifications: html.idl

///|
/// [PageSwapEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent)
#external
pub type PageSwapEvent

///|
pub impl TJsValue for PageSwapEvent with to_js(self : PageSwapEvent) -> JsValue = "%identity"

///|
pub fn[T : TPageSwapEvent] PageSwapEvent::into(self : PageSwapEvent) -> T = "%identity"

///|
pub impl TPageSwapEvent for PageSwapEvent

///|
pub impl TEvent for PageSwapEvent

///|
pub fn PageSwapEvent::new(
  type_ : String,
  event_init_dict? : PageSwapEventInit = PageSwapEventInit::empty(),
) -> PageSwapEvent {
  page_swap_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [PageSwapEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent) interface.
pub trait TPageSwapEvent: TEvent {
  activation(self : Self) -> NavigationActivation = _
  view_transition(self : Self) -> ViewTransition = _
}

///|
/// [PageSwapEvent.activation](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent/activation)
impl TPageSwapEvent with activation(self : Self) -> NavigationActivation {
  page_swap_event_activation_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [PageSwapEvent.viewTransition](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent/viewTransition)
impl TPageSwapEvent with view_transition(self : Self) -> ViewTransition {
  page_swap_event_view_transition_ffi(TJsValue::to_js(self)).unsafe_cast()
}
