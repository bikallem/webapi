// Do not edit. This file is generated.
// MoonBit type: WheelEvent
// Specifications: uievents.idl

/// [WheelEvent](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent)
#external
pub type WheelEvent

pub impl TJsValue for WheelEvent with to_js(self: WheelEvent) -> JsValue = "%identity"

pub fn[T: TWheelEvent] WheelEvent::into(self : WheelEvent) -> T = "%identity"

pub impl TWheelEvent for WheelEvent

pub impl TMouseEvent for WheelEvent

pub impl TUIEvent for WheelEvent

pub impl TEvent for WheelEvent

pub fn WheelEvent::new(type_ : String, 
event_init_dict? : WheelEventInit = WheelEventInit::empty()) -> WheelEvent {
  wheel_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

pub const WHEEL_EVENT_DOM_DELTA_PIXEL: UInt = 0x00

pub const WHEEL_EVENT_DOM_DELTA_LINE: UInt = 0x01

pub const WHEEL_EVENT_DOM_DELTA_PAGE: UInt = 0x02

/// [WheelEvent](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent) interface.
pub trait TWheelEvent: TMouseEvent {
  delta_x(self : Self) -> Double = _
  delta_y(self : Self) -> Double = _
  delta_z(self : Self) -> Double = _
  delta_mode(self : Self) -> UInt = _
}

/// [WheelEvent.deltaX](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaX)
impl TWheelEvent with delta_x(self : Self) -> Double {
  wheel_event_delta_x_ffi(TJsValue::to_js(self))
}

/// [WheelEvent.deltaY](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaY)
impl TWheelEvent with delta_y(self : Self) -> Double {
  wheel_event_delta_y_ffi(TJsValue::to_js(self))
}

/// [WheelEvent.deltaZ](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaZ)
impl TWheelEvent with delta_z(self : Self) -> Double {
  wheel_event_delta_z_ffi(TJsValue::to_js(self))
}

/// [WheelEvent.deltaMode](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaMode)
impl TWheelEvent with delta_mode(self : Self) -> UInt {
  wheel_event_delta_mode_ffi(TJsValue::to_js(self))
}