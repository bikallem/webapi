fn pointer_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PointerEvent = "webapi_PointerEvent" "new"

fn pointer_event_pointer_id_ffi(obj: JsValue) -> Int = "webapi_PointerEvent" "get_pointerId"

fn pointer_event_width_ffi(obj: JsValue) -> Double = "webapi_PointerEvent" "get_width"

fn pointer_event_height_ffi(obj: JsValue) -> Double = "webapi_PointerEvent" "get_height"

fn pointer_event_pressure_ffi(obj: JsValue) -> Float = "webapi_PointerEvent" "get_pressure"

fn pointer_event_tangential_pressure_ffi(obj: JsValue) -> Float = "webapi_PointerEvent" "get_tangentialPressure"

fn pointer_event_tilt_x_ffi(obj: JsValue) -> Int = "webapi_PointerEvent" "get_tiltX"

fn pointer_event_tilt_y_ffi(obj: JsValue) -> Int = "webapi_PointerEvent" "get_tiltY"

fn pointer_event_twist_ffi(obj: JsValue) -> Int = "webapi_PointerEvent" "get_twist"

fn pointer_event_altitude_angle_ffi(obj: JsValue) -> Double = "webapi_PointerEvent" "get_altitudeAngle"

fn pointer_event_azimuth_angle_ffi(obj: JsValue) -> Double = "webapi_PointerEvent" "get_azimuthAngle"

fn pointer_event_pointer_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PointerEvent" "get_pointerType"

///|
fn pointer_event_pointer_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(pointer_event_pointer_type_ffi_wasm(obj))
}

fn pointer_event_is_primary_ffi(obj: JsValue) -> Bool = "webapi_PointerEvent" "get_isPrimary"

fn pointer_event_persistent_device_id_ffi(obj: JsValue) -> Int = "webapi_PointerEvent" "get_persistentDeviceId"

fn pointer_event_get_coalesced_events_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PointerEvent" "getCoalescedEvents"

///|
fn pointer_event_get_coalesced_events_ffi(obj: JsValue) -> Array[PointerEvent] {
  pointer_event_get_coalesced_events_ffi_wasm(obj).unsafe_cast()
}

fn pointer_event_get_predicted_events_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PointerEvent" "getPredictedEvents"

///|
fn pointer_event_get_predicted_events_ffi(obj: JsValue) -> Array[PointerEvent] {
  pointer_event_get_predicted_events_ffi_wasm(obj).unsafe_cast()
}