///|
extern "js" fn wheel_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> WheelEvent = "(type_, event_init_dict) => new WheelEvent(type_, event_init_dict)"

///|
extern "js" fn wheel_event_delta_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaX"

///|
fn wheel_event_delta_x_ffi(obj : JsValue) -> Double {
  wheel_event_delta_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn wheel_event_delta_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaY"

///|
fn wheel_event_delta_y_ffi(obj : JsValue) -> Double {
  wheel_event_delta_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn wheel_event_delta_z_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaZ"

///|
fn wheel_event_delta_z_ffi(obj : JsValue) -> Double {
  wheel_event_delta_z_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn wheel_event_delta_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.deltaMode"

///|
fn wheel_event_delta_mode_ffi(obj : JsValue) -> UInt {
  wheel_event_delta_mode_ffi_js(obj).unsafe_cast()
}
