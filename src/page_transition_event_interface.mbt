///|
#external
pub type PageTransitionEvent

///|
pub impl TJsValue for PageTransitionEvent with to_js(self : PageTransitionEvent) -> JsValue = "%identity"

///|
pub fn[T : TPageTransitionEvent] PageTransitionEvent::into(
  self : PageTransitionEvent,
) -> T = "%identity"

///|
pub impl TPageTransitionEvent for PageTransitionEvent

///|
pub impl TEvent for PageTransitionEvent

///|
extern "js" fn page_transition_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageTransitionEvent = "(type_, event_init_dict) => new PageTransitionEvent(type_, event_init_dict)"

///|
pub fn PageTransitionEvent::new(
  type_ : String,
  event_init_dict? : PageTransitionEventInit = PageTransitionEventInit::empty(),
) -> PageTransitionEvent {
  page_transition_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TPageTransitionEvent: TEvent {
  persisted(self : Self) -> Bool = _
}

///|
extern "js" fn page_transition_event_persisted_ffi(obj : JsValue) -> Bool = "(obj) => obj.persisted"

///|
impl TPageTransitionEvent with persisted(self : Self) -> Bool {
  page_transition_event_persisted_ffi(TJsValue::to_js(self))
}
