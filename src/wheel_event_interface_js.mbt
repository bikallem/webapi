///|
extern "js" fn wheel_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> WheelEvent = "(type_, event_init_dict) => new WheelEvent(type_, event_init_dict)"

///|
extern "js" fn wheel_event_delta_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.deltaX"

///|
extern "js" fn wheel_event_delta_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.deltaY"

///|
extern "js" fn wheel_event_delta_z_ffi(obj : JsValue) -> JsValue = "(obj) => obj.deltaZ"

///|
extern "js" fn wheel_event_delta_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.deltaMode"
