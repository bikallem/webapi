///|
#external
pub type WheelEvent

///|
pub impl TJsValue for WheelEvent with to_js(self : WheelEvent) -> JsValue = "%identity"

///|
pub fn[T : TWheelEvent] WheelEvent::into(self : WheelEvent) -> T = "%identity"

///|
pub impl TWheelEvent for WheelEvent

///|
pub impl TMouseEvent for WheelEvent

///|
pub impl TUIEvent for WheelEvent

///|
pub impl TEvent for WheelEvent

///|
extern "js" fn wheel_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> WheelEvent = "(type_, event_init_dict) => new WheelEvent(type_, event_init_dict)"

///|
pub fn WheelEvent::new(
  type_ : String,
  event_init_dict? : WheelEventInit = WheelEventInit::empty(),
) -> WheelEvent {
  wheel_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub const WHEEL_EVENT_DOM_DELTA_PIXEL : UInt = 0x00

///|
pub const WHEEL_EVENT_DOM_DELTA_LINE : UInt = 0x01

///|
pub const WHEEL_EVENT_DOM_DELTA_PAGE : UInt = 0x02

///|
pub trait TWheelEvent: TMouseEvent {}
