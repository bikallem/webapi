// Do not edit. This file is generated.
// MoonBit type: TouchInit
// Specifications: touch-events.idl

/// [TouchInit](https://developer.mozilla.org/en-US/docs/Web/API/TouchInit)
#external
pub type TouchInit

pub impl TJsValue for TouchInit with to_js(self: TouchInit) -> JsValue = "%identity"

pub impl FromJsAny for TouchInit with from_js_any(value : JsAny) -> TouchInit = "%identity"

pub fn TouchInit::new(identifier : Int, 
target : &TEventTarget, 
client_x? : Double, 
client_y? : Double, 
screen_x? : Double, 
screen_y? : Double, 
page_x? : Double, 
page_y? : Double, 
radius_x? : Float, 
radius_y? : Float, 
rotation_angle? : Float, 
force? : Float, 
altitude_angle? : Double, 
azimuth_angle? : Double, 
touch_type? : TouchType) -> TouchInit {
  touch_init_ffi(TJsValue::to_js(identifier), TJsValue::to_js(target), opt_to_js(client_x), opt_to_js(client_y), opt_to_js(screen_x), opt_to_js(screen_y), opt_to_js(page_x), opt_to_js(page_y), opt_to_js(radius_x), opt_to_js(radius_y), opt_to_js(rotation_angle), opt_to_js(force), opt_to_js(altitude_angle), opt_to_js(azimuth_angle), opt_to_js(touch_type))
}

pub fn TouchInit::empty() -> TouchInit { touch_init_empty_ffi() }

pub fn TouchInit::identifier(self : TouchInit) -> Int {
  touch_init_get_identifier_ffi(TJsValue::to_js(self))
}

pub fn TouchInit::target(self : TouchInit) -> EventTarget {
  touch_init_get_target_ffi(TJsValue::to_js(self))
}

pub fn TouchInit::client_x(self : TouchInit) -> Double? {
  touch_init_get_client_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::client_y(self : TouchInit) -> Double? {
  touch_init_get_client_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::screen_x(self : TouchInit) -> Double? {
  touch_init_get_screen_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::screen_y(self : TouchInit) -> Double? {
  touch_init_get_screen_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::page_x(self : TouchInit) -> Double? {
  touch_init_get_page_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::page_y(self : TouchInit) -> Double? {
  touch_init_get_page_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::radius_x(self : TouchInit) -> Float? {
  touch_init_get_radius_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::radius_y(self : TouchInit) -> Float? {
  touch_init_get_radius_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::rotation_angle(self : TouchInit) -> Float? {
  touch_init_get_rotation_angle_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::force(self : TouchInit) -> Float? {
  touch_init_get_force_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::altitude_angle(self : TouchInit) -> Double? {
  touch_init_get_altitude_angle_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::azimuth_angle(self : TouchInit) -> Double? {
  touch_init_get_azimuth_angle_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchInit::touch_type(self : TouchInit) -> TouchType? {
  touch_init_get_touch_type_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
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

#cfg(target="js")
extern "js" fn touch_init_empty_ffi() -> TouchInit = "() => {}"

#cfg(target="js")
extern "js" fn touch_init_get_identifier_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.identifier"

///|
#cfg(target="js")
fn touch_init_get_identifier_ffi(obj: JsValue) -> Int {
  touch_init_get_identifier_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn touch_init_get_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn touch_init_get_target_ffi(obj: JsValue) -> EventTarget {
  touch_init_get_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn touch_init_get_client_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientX"

#cfg(target="js")
extern "js" fn touch_init_get_client_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientY"

#cfg(target="js")
extern "js" fn touch_init_get_screen_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenX"

#cfg(target="js")
extern "js" fn touch_init_get_screen_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenY"

#cfg(target="js")
extern "js" fn touch_init_get_page_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageX"

#cfg(target="js")
extern "js" fn touch_init_get_page_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageY"

#cfg(target="js")
extern "js" fn touch_init_get_radius_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.radiusX"

#cfg(target="js")
extern "js" fn touch_init_get_radius_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.radiusY"

#cfg(target="js")
extern "js" fn touch_init_get_rotation_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.rotationAngle"

#cfg(target="js")
extern "js" fn touch_init_get_force_ffi(obj: JsValue) -> JsValue = "(obj) => obj.force"

#cfg(target="js")
extern "js" fn touch_init_get_altitude_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.altitudeAngle"

#cfg(target="js")
extern "js" fn touch_init_get_azimuth_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.azimuthAngle"

#cfg(target="js")
extern "js" fn touch_init_get_touch_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.touchType"

#cfg(target="wasm-gc")
fn touch_init_ffi(identifier: JsValue, target: JsValue, client_x: JsValue, client_y: JsValue, screen_x: JsValue, screen_y: JsValue, page_x: JsValue, page_y: JsValue, radius_x: JsValue, radius_y: JsValue, rotation_angle: JsValue, force: JsValue, altitude_angle: JsValue, azimuth_angle: JsValue, touch_type: JsValue) -> TouchInit = "webapi_TouchInit" "new"

#cfg(target="wasm-gc")
fn touch_init_empty_ffi() -> TouchInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn touch_init_get_identifier_ffi(obj: JsValue) -> Int = "webapi_TouchInit" "get_identifier"

#cfg(target="wasm-gc")
fn touch_init_get_target_ffi(obj: JsValue) -> EventTarget = "webapi_TouchInit" "get_target"

#cfg(target="wasm-gc")
fn touch_init_get_client_x_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_clientX"

#cfg(target="wasm-gc")
fn touch_init_get_client_y_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_clientY"

#cfg(target="wasm-gc")
fn touch_init_get_screen_x_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_screenX"

#cfg(target="wasm-gc")
fn touch_init_get_screen_y_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_screenY"

#cfg(target="wasm-gc")
fn touch_init_get_page_x_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_pageX"

#cfg(target="wasm-gc")
fn touch_init_get_page_y_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_pageY"

#cfg(target="wasm-gc")
fn touch_init_get_radius_x_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_radiusX"

#cfg(target="wasm-gc")
fn touch_init_get_radius_y_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_radiusY"

#cfg(target="wasm-gc")
fn touch_init_get_rotation_angle_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_rotationAngle"

#cfg(target="wasm-gc")
fn touch_init_get_force_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_force"

#cfg(target="wasm-gc")
fn touch_init_get_altitude_angle_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_altitudeAngle"

#cfg(target="wasm-gc")
fn touch_init_get_azimuth_angle_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_azimuthAngle"

#cfg(target="wasm-gc")
fn touch_init_get_touch_type_ffi(obj: JsValue) -> JsValue = "webapi_TouchInit" "get_touchType"