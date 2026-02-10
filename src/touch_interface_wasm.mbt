fn touch_new_ffi(touch_init_dict: JsValue) -> Touch = "webapi_Touch" "new"

fn touch_identifier_ffi(obj: JsValue) -> Int = "webapi_Touch" "get_identifier"

fn touch_target_ffi(obj: JsValue) -> EventTarget = "webapi_Touch" "get_target"

fn touch_screen_x_ffi(obj: JsValue) -> Double = "webapi_Touch" "get_screenX"

fn touch_screen_y_ffi(obj: JsValue) -> Double = "webapi_Touch" "get_screenY"

fn touch_client_x_ffi(obj: JsValue) -> Double = "webapi_Touch" "get_clientX"

fn touch_client_y_ffi(obj: JsValue) -> Double = "webapi_Touch" "get_clientY"

fn touch_page_x_ffi(obj: JsValue) -> Double = "webapi_Touch" "get_pageX"

fn touch_page_y_ffi(obj: JsValue) -> Double = "webapi_Touch" "get_pageY"

fn touch_radius_x_ffi(obj: JsValue) -> Float = "webapi_Touch" "get_radiusX"

fn touch_radius_y_ffi(obj: JsValue) -> Float = "webapi_Touch" "get_radiusY"

fn touch_rotation_angle_ffi(obj: JsValue) -> Float = "webapi_Touch" "get_rotationAngle"

fn touch_force_ffi(obj: JsValue) -> Float = "webapi_Touch" "get_force"

fn touch_altitude_angle_ffi(obj: JsValue) -> Float = "webapi_Touch" "get_altitudeAngle"

fn touch_azimuth_angle_ffi(obj: JsValue) -> Float = "webapi_Touch" "get_azimuthAngle"

fn touch_touch_type_ffi(obj: JsValue) -> TouchType = "webapi_Touch" "get_touchType"