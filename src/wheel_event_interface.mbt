// Do not edit. This file is generated.
// MoonBit type: WheelEvent
// Specifications: uievents.idl

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
pub trait TWheelEvent: TMouseEvent {
  delta_x(self : Self) -> Double = _
  delta_y(self : Self) -> Double = _
  delta_z(self : Self) -> Double = _
  delta_mode(self : Self) -> UInt = _
}

///|
extern "js" fn wheel_event_delta_x_ffi(obj : JsValue) -> Double = "(obj) => obj.deltaX"

///|
impl TWheelEvent with delta_x(self : Self) -> Double {
  wheel_event_delta_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn wheel_event_delta_y_ffi(obj : JsValue) -> Double = "(obj) => obj.deltaY"

///|
impl TWheelEvent with delta_y(self : Self) -> Double {
  wheel_event_delta_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn wheel_event_delta_z_ffi(obj : JsValue) -> Double = "(obj) => obj.deltaZ"

///|
impl TWheelEvent with delta_z(self : Self) -> Double {
  wheel_event_delta_z_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn wheel_event_delta_mode_ffi(obj : JsValue) -> UInt = "(obj) => obj.deltaMode"

///|
impl TWheelEvent with delta_mode(self : Self) -> UInt {
  wheel_event_delta_mode_ffi(TJsValue::to_js(self))
}
