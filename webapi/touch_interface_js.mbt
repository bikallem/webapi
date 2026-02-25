///|
extern "js" fn touch_new_ffi(touch_init_dict : JsValue) -> Touch = "(touch_init_dict) => new Touch(touch_init_dict)"

///|
extern "js" fn touch_identifier_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.identifier"

///|
fn touch_identifier_ffi(obj : JsValue) -> Int {
  touch_identifier_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
fn touch_target_ffi(obj : JsValue) -> EventTarget {
  touch_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_screen_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenX"

///|
fn touch_screen_x_ffi(obj : JsValue) -> Double {
  touch_screen_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_screen_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenY"

///|
fn touch_screen_y_ffi(obj : JsValue) -> Double {
  touch_screen_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_client_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientX"

///|
fn touch_client_x_ffi(obj : JsValue) -> Double {
  touch_client_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_client_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientY"

///|
fn touch_client_y_ffi(obj : JsValue) -> Double {
  touch_client_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_page_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageX"

///|
fn touch_page_x_ffi(obj : JsValue) -> Double {
  touch_page_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_page_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageY"

///|
fn touch_page_y_ffi(obj : JsValue) -> Double {
  touch_page_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_radius_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.radiusX"

///|
fn touch_radius_x_ffi(obj : JsValue) -> Float {
  touch_radius_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_radius_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.radiusY"

///|
fn touch_radius_y_ffi(obj : JsValue) -> Float {
  touch_radius_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_rotation_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rotationAngle"

///|
fn touch_rotation_angle_ffi(obj : JsValue) -> Float {
  touch_rotation_angle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_force_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.force"

///|
fn touch_force_ffi(obj : JsValue) -> Float {
  touch_force_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_altitude_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.altitudeAngle"

///|
fn touch_altitude_angle_ffi(obj : JsValue) -> Float {
  touch_altitude_angle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_azimuth_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.azimuthAngle"

///|
fn touch_azimuth_angle_ffi(obj : JsValue) -> Float {
  touch_azimuth_angle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_touch_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.touchType"

///|
fn touch_touch_type_ffi(obj : JsValue) -> TouchType {
  TouchType::from_unchecked(touch_touch_type_ffi_js(obj).unsafe_cast())
}
