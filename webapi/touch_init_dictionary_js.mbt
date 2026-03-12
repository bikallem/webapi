extern "js" fn touch_init_ffi(identifier: JsValue, target: JsValue, client_x: JsValue, client_y: JsValue, screen_x: JsValue, screen_y: JsValue, page_x: JsValue, page_y: JsValue, radius_x: JsValue, radius_y: JsValue, rotation_angle: JsValue, force: JsValue, altitude_angle: JsValue, azimuth_angle: JsValue, touch_type: JsValue) -> TouchInit = 
#|(identifier, target, clientX, clientY, screenX, screenY, pageX, pageY, radiusX, radiusY, rotationAngle, force, altitudeAngle, azimuthAngle, touchType) => {
#|  const obj = {};
#|  if (identifier !== undefined) obj.identifier = identifier;
#|  if (target !== undefined) obj.target = target;
#|  if (clientX !== undefined) obj.clientX = clientX;
#|  if (clientY !== undefined) obj.clientY = clientY;
#|  if (screenX !== undefined) obj.screenX = screenX;
#|  if (screenY !== undefined) obj.screenY = screenY;
#|  if (pageX !== undefined) obj.pageX = pageX;
#|  if (pageY !== undefined) obj.pageY = pageY;
#|  if (radiusX !== undefined) obj.radiusX = radiusX;
#|  if (radiusY !== undefined) obj.radiusY = radiusY;
#|  if (rotationAngle !== undefined) obj.rotationAngle = rotationAngle;
#|  if (force !== undefined) obj.force = force;
#|  if (altitudeAngle !== undefined) obj.altitudeAngle = altitudeAngle;
#|  if (azimuthAngle !== undefined) obj.azimuthAngle = azimuthAngle;
#|  if (touchType !== undefined) obj.touchType = touchType;
#|  return obj;
#|}

extern "js" fn touch_init_empty_ffi() -> TouchInit = "() => {}"

extern "js" fn touch_init_get_identifier_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.identifier"

///|
fn touch_init_get_identifier_ffi(obj: JsValue) -> Int {
  touch_init_get_identifier_ffi_js(obj).unsafe_cast()
}

extern "js" fn touch_init_get_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn touch_init_get_target_ffi(obj: JsValue) -> EventTarget {
  touch_init_get_target_ffi_js(obj).unsafe_cast()
}

extern "js" fn touch_init_get_client_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientX"

extern "js" fn touch_init_get_client_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientY"

extern "js" fn touch_init_get_screen_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenX"

extern "js" fn touch_init_get_screen_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenY"

extern "js" fn touch_init_get_page_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageX"

extern "js" fn touch_init_get_page_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageY"

extern "js" fn touch_init_get_radius_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.radiusX"

extern "js" fn touch_init_get_radius_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.radiusY"

extern "js" fn touch_init_get_rotation_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.rotationAngle"

extern "js" fn touch_init_get_force_ffi(obj: JsValue) -> JsValue = "(obj) => obj.force"

extern "js" fn touch_init_get_altitude_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.altitudeAngle"

extern "js" fn touch_init_get_azimuth_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.azimuthAngle"

extern "js" fn touch_init_get_touch_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.touchType"