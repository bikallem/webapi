// Do not edit. This file is generated.
// MoonBit type: Touch
// Specifications: touch-events.idl

///|
/// [Touch](https://developer.mozilla.org/en-US/docs/Web/API/Touch)
#external
pub type Touch

///|
pub impl TJsValue for Touch with to_js(self : Touch) -> JsValue = "%identity"

///|
pub fn[T : TTouch] Touch::into(self : Touch) -> T = "%identity"

///|
pub impl TTouch for Touch

///|
pub fn Touch::new(touch_init_dict : TouchInit) -> Touch {
  touch_new_ffi(TJsValue::to_js(touch_init_dict))
}

///|
/// [Touch](https://developer.mozilla.org/en-US/docs/Web/API/Touch) interface.
pub trait TTouch: TJsValue {
  identifier(self : Self) -> Int = _
  target(self : Self) -> EventTarget = _
  screen_x(self : Self) -> Double = _
  screen_y(self : Self) -> Double = _
  client_x(self : Self) -> Double = _
  client_y(self : Self) -> Double = _
  page_x(self : Self) -> Double = _
  page_y(self : Self) -> Double = _
  radius_x(self : Self) -> Float = _
  radius_y(self : Self) -> Float = _
  rotation_angle(self : Self) -> Float = _
  force(self : Self) -> Float = _
  altitude_angle(self : Self) -> Float = _
  azimuth_angle(self : Self) -> Float = _
  touch_type(self : Self) -> TouchType = _
}

///|
/// [Touch.identifier](https://developer.mozilla.org/en-US/docs/Web/API/Touch/identifier)
impl TTouch with identifier(self : Self) -> Int {
  touch_identifier_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.target](https://developer.mozilla.org/en-US/docs/Web/API/Touch/target)
impl TTouch with target(self : Self) -> EventTarget {
  touch_target_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.screenX](https://developer.mozilla.org/en-US/docs/Web/API/Touch/screenX)
impl TTouch with screen_x(self : Self) -> Double {
  touch_screen_x_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.screenY](https://developer.mozilla.org/en-US/docs/Web/API/Touch/screenY)
impl TTouch with screen_y(self : Self) -> Double {
  touch_screen_y_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.clientX](https://developer.mozilla.org/en-US/docs/Web/API/Touch/clientX)
impl TTouch with client_x(self : Self) -> Double {
  touch_client_x_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.clientY](https://developer.mozilla.org/en-US/docs/Web/API/Touch/clientY)
impl TTouch with client_y(self : Self) -> Double {
  touch_client_y_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.pageX](https://developer.mozilla.org/en-US/docs/Web/API/Touch/pageX)
impl TTouch with page_x(self : Self) -> Double {
  touch_page_x_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.pageY](https://developer.mozilla.org/en-US/docs/Web/API/Touch/pageY)
impl TTouch with page_y(self : Self) -> Double {
  touch_page_y_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.radiusX](https://developer.mozilla.org/en-US/docs/Web/API/Touch/radiusX)
impl TTouch with radius_x(self : Self) -> Float {
  touch_radius_x_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.radiusY](https://developer.mozilla.org/en-US/docs/Web/API/Touch/radiusY)
impl TTouch with radius_y(self : Self) -> Float {
  touch_radius_y_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.rotationAngle](https://developer.mozilla.org/en-US/docs/Web/API/Touch/rotationAngle)
impl TTouch with rotation_angle(self : Self) -> Float {
  touch_rotation_angle_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.force](https://developer.mozilla.org/en-US/docs/Web/API/Touch/force)
impl TTouch with force(self : Self) -> Float {
  touch_force_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.altitudeAngle](https://developer.mozilla.org/en-US/docs/Web/API/Touch/altitudeAngle)
impl TTouch with altitude_angle(self : Self) -> Float {
  touch_altitude_angle_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.azimuthAngle](https://developer.mozilla.org/en-US/docs/Web/API/Touch/azimuthAngle)
impl TTouch with azimuth_angle(self : Self) -> Float {
  touch_azimuth_angle_ffi(TJsValue::to_js(self))
}

///|
/// [Touch.touchType](https://developer.mozilla.org/en-US/docs/Web/API/Touch/touchType)
impl TTouch with touch_type(self : Self) -> TouchType {
  touch_touch_type_ffi(TJsValue::to_js(self))
}
