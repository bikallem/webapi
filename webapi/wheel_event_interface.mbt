// Do not edit. This file is generated.
// MoonBit type: WheelEvent
// Specifications: pointerevents.idl

///|
/// [WheelEvent](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent)
#external
pub type WheelEvent

///|
pub impl TJsValue for WheelEvent with to_js(self : WheelEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for WheelEvent with from_js_any(value : JsAny) -> WheelEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWheelEvent] WheelEvent::into(self : WheelEvent) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TWheelEvent] WheelEvent::unsafe_into(self : WheelEvent) -> T = "%identity"

///|
pub impl HasConstructor for WheelEvent with constructor_name() {
  "WheelEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWheelEvent + HasConstructor] WheelEvent::try_into(
  self : WheelEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TWheelEvent for WheelEvent

///|
pub impl TMouseEvent for WheelEvent

///|
pub impl TUIEvent for WheelEvent

///|
pub impl TEvent for WheelEvent

///|
pub fn WheelEvent::new(
  type_ : String,
  event_init_dict? : WheelEventInit,
) -> WheelEvent {
  wheel_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
pub const WHEEL_EVENT_DOM_DELTA_PIXEL : UInt = 0x00

///|
pub const WHEEL_EVENT_DOM_DELTA_LINE : UInt = 0x01

///|
pub const WHEEL_EVENT_DOM_DELTA_PAGE : UInt = 0x02

///|
/// [WheelEvent](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent) interface.
pub trait TWheelEvent: TMouseEvent {
  delta_x(self : Self) -> Double = _
  delta_y(self : Self) -> Double = _
  delta_z(self : Self) -> Double = _
  delta_mode(self : Self) -> UInt = _
}

///|
/// [WheelEvent.deltaX](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaX)
impl TWheelEvent with delta_x(self : Self) -> Double {
  wheel_event_delta_x_ffi(TJsValue::to_js(self))
}

///|
/// [WheelEvent.deltaY](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaY)
impl TWheelEvent with delta_y(self : Self) -> Double {
  wheel_event_delta_y_ffi(TJsValue::to_js(self))
}

///|
/// [WheelEvent.deltaZ](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaZ)
impl TWheelEvent with delta_z(self : Self) -> Double {
  wheel_event_delta_z_ffi(TJsValue::to_js(self))
}

///|
/// [WheelEvent.deltaMode](https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent/deltaMode)
impl TWheelEvent with delta_mode(self : Self) -> UInt {
  wheel_event_delta_mode_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn wheel_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> WheelEvent = "(type_, event_init_dict) => new WheelEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn wheel_event_delta_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaX"

///|
#cfg(target="js")
fn wheel_event_delta_x_ffi(obj : JsValue) -> Double {
  wheel_event_delta_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn wheel_event_delta_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaY"

///|
#cfg(target="js")
fn wheel_event_delta_y_ffi(obj : JsValue) -> Double {
  wheel_event_delta_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn wheel_event_delta_z_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaZ"

///|
#cfg(target="js")
fn wheel_event_delta_z_ffi(obj : JsValue) -> Double {
  wheel_event_delta_z_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn wheel_event_delta_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaMode"

///|
#cfg(target="js")
fn wheel_event_delta_mode_ffi(obj : JsValue) -> UInt {
  wheel_event_delta_mode_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn wheel_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> WheelEvent = "webapi_WheelEvent" "new"

///|
#cfg(target="wasm-gc")
fn wheel_event_delta_x_ffi(obj : JsValue) -> Double = "webapi_WheelEvent" "get_deltaX"

///|
#cfg(target="wasm-gc")
fn wheel_event_delta_y_ffi(obj : JsValue) -> Double = "webapi_WheelEvent" "get_deltaY"

///|
#cfg(target="wasm-gc")
fn wheel_event_delta_z_ffi(obj : JsValue) -> Double = "webapi_WheelEvent" "get_deltaZ"

///|
#cfg(target="wasm-gc")
fn wheel_event_delta_mode_ffi(obj : JsValue) -> UInt = "webapi_WheelEvent" "get_deltaMode"
