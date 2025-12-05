// Auto-generated MoonBit bindings for WheelEvent

// Do not edit manually

///|
#external
pub type WheelEvent

///|
pub const DOM_DELTA_PIXEL : UInt = 0x00

///|
pub const DOM_DELTA_LINE : UInt = 0x01

///|
pub const DOM_DELTA_PAGE : UInt = 0x02

///|
pub trait TWheelEvent: TJsValue + TMouseEvent {
  delta_x(self : Self) -> Double = _
  delta_y(self : Self) -> Double = _
  delta_z(self : Self) -> Double = _
  delta_mode(self : Self) -> UInt = _
}

///|
pub impl TEvent for WheelEvent

///|
pub impl TUIEvent for WheelEvent

///|
pub impl TMouseEvent for WheelEvent

///|
pub impl TWheelEvent for WheelEvent

///|
pub impl TJsValue for WheelEvent with to_js(self : WheelEvent) -> JsValue = "%identity"

///|
pub fn WheelEvent::null() -> WheelEvent {
  JsValue::null()
}

///|
fn wheel_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> WheelEvent = "webapi_WheelEvent" "new"

///|
pub fn WheelEvent::new(
  type_ : String,
  event_init_dict? : WheelEventInit = WheelEventInit::empty(),
) -> WheelEvent {
  wheel_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn wheel_event_delta_x_ffi(obj : JsValue) -> Double = "webapi_WheelEvent" "deltaX"

///|
impl TWheelEvent with delta_x(self : Self) -> Double {
  wheel_event_delta_x_ffi(self.to_js())
}

///|
fn wheel_event_delta_y_ffi(obj : JsValue) -> Double = "webapi_WheelEvent" "deltaY"

///|
impl TWheelEvent with delta_y(self : Self) -> Double {
  wheel_event_delta_y_ffi(self.to_js())
}

///|
fn wheel_event_delta_z_ffi(obj : JsValue) -> Double = "webapi_WheelEvent" "deltaZ"

///|
impl TWheelEvent with delta_z(self : Self) -> Double {
  wheel_event_delta_z_ffi(self.to_js())
}

///|
fn wheel_event_delta_mode_ffi(obj : JsValue) -> JsValue = "webapi_WheelEvent" "deltaMode"

///|
impl TWheelEvent with delta_mode(self : Self) -> UInt {
  wheel_event_delta_mode_ffi(self.to_js()).unsafe_cast()
}
