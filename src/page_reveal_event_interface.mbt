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
extern "js" fn page_reveal_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageRevealEvent = "(type_, event_init_dict) => new PageRevealEvent(type_, event_init_dict)"

///|
pub fn PageRevealEvent::new(
  type_ : String,
  event_init_dict? : PageRevealEventInit = PageRevealEventInit::empty(),
) -> PageRevealEvent {
  page_reveal_event_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TPageRevealEvent: TEvent {}
