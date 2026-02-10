extern "js" fn pointer_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PointerEvent = "(type_, event_init_dict) => new PointerEvent(type_, event_init_dict)"

extern "js" fn pointer_event_pointer_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pointerId"

///|
fn pointer_event_pointer_id_ffi(obj: JsValue) -> Int {
  pointer_event_pointer_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn pointer_event_width_ffi(obj: JsValue) -> Double {
  pointer_event_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
fn pointer_event_height_ffi(obj: JsValue) -> Double {
  pointer_event_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_pressure_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pressure"

///|
fn pointer_event_pressure_ffi(obj: JsValue) -> Float {
  pointer_event_pressure_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_tangential_pressure_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tangentialPressure"

///|
fn pointer_event_tangential_pressure_ffi(obj: JsValue) -> Float {
  pointer_event_tangential_pressure_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_tilt_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tiltX"

///|
fn pointer_event_tilt_x_ffi(obj: JsValue) -> Int {
  pointer_event_tilt_x_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_tilt_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tiltY"

///|
fn pointer_event_tilt_y_ffi(obj: JsValue) -> Int {
  pointer_event_tilt_y_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_twist_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.twist"

///|
fn pointer_event_twist_ffi(obj: JsValue) -> Int {
  pointer_event_twist_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_altitude_angle_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.altitudeAngle"

///|
fn pointer_event_altitude_angle_ffi(obj: JsValue) -> Double {
  pointer_event_altitude_angle_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_azimuth_angle_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.azimuthAngle"

///|
fn pointer_event_azimuth_angle_ffi(obj: JsValue) -> Double {
  pointer_event_azimuth_angle_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_pointer_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pointerType"

///|
fn pointer_event_pointer_type_ffi(obj: JsValue) -> String {
  pointer_event_pointer_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_is_primary_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isPrimary"

///|
fn pointer_event_is_primary_ffi(obj: JsValue) -> Bool {
  pointer_event_is_primary_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_persistent_device_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.persistentDeviceId"

///|
fn pointer_event_persistent_device_id_ffi(obj: JsValue) -> Int {
  pointer_event_persistent_device_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_get_coalesced_events_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getCoalescedEvents()"

///|
fn pointer_event_get_coalesced_events_ffi(obj: JsValue) -> Array[PointerEvent] {
  pointer_event_get_coalesced_events_ffi_js(obj).unsafe_cast()
}

extern "js" fn pointer_event_get_predicted_events_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getPredictedEvents()"

///|
fn pointer_event_get_predicted_events_ffi(obj: JsValue) -> Array[PointerEvent] {
  pointer_event_get_predicted_events_ffi_js(obj).unsafe_cast()
}