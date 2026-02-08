///|
fn wheel_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> WheelEvent = "webapi_WheelEvent" "new"

///|
fn wheel_event_delta_x_ffi(obj : JsValue) -> JsValue = "webapi_WheelEvent" "get_deltaX"

///|
fn wheel_event_delta_y_ffi(obj : JsValue) -> JsValue = "webapi_WheelEvent" "get_deltaY"

///|
fn wheel_event_delta_z_ffi(obj : JsValue) -> JsValue = "webapi_WheelEvent" "get_deltaZ"

///|
fn wheel_event_delta_mode_ffi(obj : JsValue) -> JsValue = "webapi_WheelEvent" "get_deltaMode"
