///|
fn touch_init_ffi(
  identifier : JsValue,
  target : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  screen_x : JsValue,
  screen_y : JsValue,
  page_x : JsValue,
  page_y : JsValue,
  radius_x : JsValue,
  radius_y : JsValue,
  rotation_angle : JsValue,
  force : JsValue,
  altitude_angle : JsValue,
  azimuth_angle : JsValue,
  touch_type : JsValue,
) -> TouchInit = "webapi_TouchInit" "new"

///|
fn touch_init_empty_ffi() -> TouchInit = "webapi_Dictionary" "empty"

///|
fn touch_init_get_identifier_ffi(obj : JsValue) -> Int = "webapi_TouchInit" "get_identifier"

///|
fn touch_init_get_target_ffi(obj : JsValue) -> EventTarget = "webapi_TouchInit" "get_target"

///|
fn touch_init_get_client_x_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_clientX"

///|
fn touch_init_get_client_y_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_clientY"

///|
fn touch_init_get_screen_x_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_screenX"

///|
fn touch_init_get_screen_y_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_screenY"

///|
fn touch_init_get_page_x_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_pageX"

///|
fn touch_init_get_page_y_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_pageY"

///|
fn touch_init_get_radius_x_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_radiusX"

///|
fn touch_init_get_radius_y_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_radiusY"

///|
fn touch_init_get_rotation_angle_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_rotationAngle"

///|
fn touch_init_get_force_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_force"

///|
fn touch_init_get_altitude_angle_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_altitudeAngle"

///|
fn touch_init_get_azimuth_angle_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_azimuthAngle"

///|
fn touch_init_get_touch_type_ffi(obj : JsValue) -> JsValue = "webapi_TouchInit" "get_touchType"
