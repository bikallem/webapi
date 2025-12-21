///|
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
extern "js" fn page_swap_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageSwapEvent = "(type_, event_init_dict) => new PageSwapEvent(type_, event_init_dict)"

///|
pub fn PageSwapEvent::new(
  type_ : String,
  event_init_dict? : PageSwapEventInit = PageSwapEventInit::empty(),
) -> PageSwapEvent {
  page_swap_event_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TPageSwapEvent: TEvent {}
