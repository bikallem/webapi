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