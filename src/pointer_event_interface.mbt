// Do not edit. This file is generated.
// MoonBit type: PointerEvent
// Specifications: pointerevents.idl

///|
/// [PointerEvent](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent)
#external
pub type PointerEvent

///|
pub impl TJsValue for PointerEvent with to_js(self : PointerEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for PointerEvent with from_js_any(value : JsAny) -> PointerEvent = "%identity"

///|
pub fn[T : TPointerEvent] PointerEvent::into(self : PointerEvent) -> T = "%identity"

///|
pub impl TPointerEvent for PointerEvent

///|
pub impl TMouseEvent for PointerEvent

///|
pub impl TUIEvent for PointerEvent

///|
pub impl TEvent for PointerEvent

///|
pub fn PointerEvent::new(
  type_ : String,
  event_init_dict? : PointerEventInit,
) -> PointerEvent {
  pointer_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [PointerEvent](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent) interface.
pub trait TPointerEvent: TMouseEvent {
  pointer_id(self : Self) -> Int = _
  width(self : Self) -> Double = _
  height(self : Self) -> Double = _
  pressure(self : Self) -> Float = _
  tangential_pressure(self : Self) -> Float = _
  tilt_x(self : Self) -> Int = _
  tilt_y(self : Self) -> Int = _
  twist(self : Self) -> Int = _
  altitude_angle(self : Self) -> Double = _
  azimuth_angle(self : Self) -> Double = _
  pointer_type(self : Self) -> String = _
  is_primary(self : Self) -> Bool = _
  persistent_device_id(self : Self) -> Int = _
  get_coalesced_events(self : Self) -> Array[PointerEvent] = _
  get_predicted_events(self : Self) -> Array[PointerEvent] = _
}

///|
/// [PointerEvent.pointerId](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/pointerId)
impl TPointerEvent with pointer_id(self : Self) -> Int {
  pointer_event_pointer_id_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.width](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/width)
impl TPointerEvent with width(self : Self) -> Double {
  pointer_event_width_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.height](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/height)
impl TPointerEvent with height(self : Self) -> Double {
  pointer_event_height_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.pressure](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/pressure)
impl TPointerEvent with pressure(self : Self) -> Float {
  pointer_event_pressure_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.tangentialPressure](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/tangentialPressure)
impl TPointerEvent with tangential_pressure(self : Self) -> Float {
  pointer_event_tangential_pressure_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.tiltX](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/tiltX)
impl TPointerEvent with tilt_x(self : Self) -> Int {
  pointer_event_tilt_x_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.tiltY](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/tiltY)
impl TPointerEvent with tilt_y(self : Self) -> Int {
  pointer_event_tilt_y_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.twist](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/twist)
impl TPointerEvent with twist(self : Self) -> Int {
  pointer_event_twist_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.altitudeAngle](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/altitudeAngle)
impl TPointerEvent with altitude_angle(self : Self) -> Double {
  pointer_event_altitude_angle_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.azimuthAngle](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/azimuthAngle)
impl TPointerEvent with azimuth_angle(self : Self) -> Double {
  pointer_event_azimuth_angle_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.pointerType](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/pointerType)
impl TPointerEvent with pointer_type(self : Self) -> String {
  pointer_event_pointer_type_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.isPrimary](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/isPrimary)
impl TPointerEvent with is_primary(self : Self) -> Bool {
  pointer_event_is_primary_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.persistentDeviceId](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/persistentDeviceId)
impl TPointerEvent with persistent_device_id(self : Self) -> Int {
  pointer_event_persistent_device_id_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.getCoalescedEvents](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/getCoalescedEvents)
impl TPointerEvent with get_coalesced_events(self : Self) -> Array[PointerEvent] {
  pointer_event_get_coalesced_events_ffi(TJsValue::to_js(self))
}

///|
/// [PointerEvent.getPredictedEvents](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/getPredictedEvents)
impl TPointerEvent with get_predicted_events(self : Self) -> Array[PointerEvent] {
  pointer_event_get_predicted_events_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn pointer_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PointerEvent = "(type_, event_init_dict) => new PointerEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn pointer_event_pointer_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pointerId"

///|
#cfg(target="js")
fn pointer_event_pointer_id_ffi(obj : JsValue) -> Int {
  pointer_event_pointer_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn pointer_event_width_ffi(obj : JsValue) -> Double {
  pointer_event_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn pointer_event_height_ffi(obj : JsValue) -> Double {
  pointer_event_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_pressure_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pressure"

///|
#cfg(target="js")
fn pointer_event_pressure_ffi(obj : JsValue) -> Float {
  pointer_event_pressure_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_tangential_pressure_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.tangentialPressure"

///|
#cfg(target="js")
fn pointer_event_tangential_pressure_ffi(obj : JsValue) -> Float {
  pointer_event_tangential_pressure_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_tilt_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tiltX"

///|
#cfg(target="js")
fn pointer_event_tilt_x_ffi(obj : JsValue) -> Int {
  pointer_event_tilt_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_tilt_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tiltY"

///|
#cfg(target="js")
fn pointer_event_tilt_y_ffi(obj : JsValue) -> Int {
  pointer_event_tilt_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_twist_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.twist"

///|
#cfg(target="js")
fn pointer_event_twist_ffi(obj : JsValue) -> Int {
  pointer_event_twist_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_altitude_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.altitudeAngle"

///|
#cfg(target="js")
fn pointer_event_altitude_angle_ffi(obj : JsValue) -> Double {
  pointer_event_altitude_angle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_azimuth_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.azimuthAngle"

///|
#cfg(target="js")
fn pointer_event_azimuth_angle_ffi(obj : JsValue) -> Double {
  pointer_event_azimuth_angle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_pointer_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pointerType"

///|
#cfg(target="js")
fn pointer_event_pointer_type_ffi(obj : JsValue) -> String {
  pointer_event_pointer_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_is_primary_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isPrimary"

///|
#cfg(target="js")
fn pointer_event_is_primary_ffi(obj : JsValue) -> Bool {
  pointer_event_is_primary_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_persistent_device_id_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.persistentDeviceId"

///|
#cfg(target="js")
fn pointer_event_persistent_device_id_ffi(obj : JsValue) -> Int {
  pointer_event_persistent_device_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_get_coalesced_events_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getCoalescedEvents()"

///|
#cfg(target="js")
fn pointer_event_get_coalesced_events_ffi(obj : JsValue) -> Array[PointerEvent] {
  pointer_event_get_coalesced_events_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn pointer_event_get_predicted_events_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getPredictedEvents()"

///|
#cfg(target="js")
fn pointer_event_get_predicted_events_ffi(obj : JsValue) -> Array[PointerEvent] {
  pointer_event_get_predicted_events_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn pointer_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PointerEvent = "webapi_PointerEvent" "new"

///|
#cfg(target="wasm-gc")
fn pointer_event_pointer_id_ffi(obj : JsValue) -> Int = "webapi_PointerEvent" "get_pointerId"

///|
#cfg(target="wasm-gc")
fn pointer_event_width_ffi(obj : JsValue) -> Double = "webapi_PointerEvent" "get_width"

///|
#cfg(target="wasm-gc")
fn pointer_event_height_ffi(obj : JsValue) -> Double = "webapi_PointerEvent" "get_height"

///|
#cfg(target="wasm-gc")
fn pointer_event_pressure_ffi(obj : JsValue) -> Float = "webapi_PointerEvent" "get_pressure"

///|
#cfg(target="wasm-gc")
fn pointer_event_tangential_pressure_ffi(obj : JsValue) -> Float = "webapi_PointerEvent" "get_tangentialPressure"

///|
#cfg(target="wasm-gc")
fn pointer_event_tilt_x_ffi(obj : JsValue) -> Int = "webapi_PointerEvent" "get_tiltX"

///|
#cfg(target="wasm-gc")
fn pointer_event_tilt_y_ffi(obj : JsValue) -> Int = "webapi_PointerEvent" "get_tiltY"

///|
#cfg(target="wasm-gc")
fn pointer_event_twist_ffi(obj : JsValue) -> Int = "webapi_PointerEvent" "get_twist"

///|
#cfg(target="wasm-gc")
fn pointer_event_altitude_angle_ffi(obj : JsValue) -> Double = "webapi_PointerEvent" "get_altitudeAngle"

///|
#cfg(target="wasm-gc")
fn pointer_event_azimuth_angle_ffi(obj : JsValue) -> Double = "webapi_PointerEvent" "get_azimuthAngle"

///|
#cfg(target="wasm-gc")
fn pointer_event_pointer_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PointerEvent" "get_pointerType"

///|
#cfg(target="wasm-gc")
fn pointer_event_pointer_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(pointer_event_pointer_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn pointer_event_is_primary_ffi(obj : JsValue) -> Bool = "webapi_PointerEvent" "get_isPrimary"

///|
#cfg(target="wasm-gc")
fn pointer_event_persistent_device_id_ffi(obj : JsValue) -> Int = "webapi_PointerEvent" "get_persistentDeviceId"

///|
#cfg(target="wasm-gc")
fn pointer_event_get_coalesced_events_ffi_wasm(obj : JsValue) -> JsArray = "webapi_PointerEvent" "getCoalescedEvents"

///|
#cfg(target="wasm-gc")
fn pointer_event_get_coalesced_events_ffi(obj : JsValue) -> Array[PointerEvent] {
  pointer_event_get_coalesced_events_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn pointer_event_get_predicted_events_ffi_wasm(obj : JsValue) -> JsArray = "webapi_PointerEvent" "getPredictedEvents"

///|
#cfg(target="wasm-gc")
fn pointer_event_get_predicted_events_ffi(obj : JsValue) -> Array[PointerEvent] {
  pointer_event_get_predicted_events_ffi_wasm(obj).to_array()
}
