// Do not edit. This file is generated.
// MoonBit type: TouchInit
// Specifications: touch-events.idl

///|
/// [TouchInit](https://developer.mozilla.org/en-US/docs/Web/API/TouchInit)
#external
pub type TouchInit

///|
pub impl TJsValue for TouchInit with to_js(self : TouchInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for TouchInit with from_js_any(value : JsAny) -> TouchInit = "%identity"

///|
pub fn TouchInit::new(
  identifier : Int,
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
  touch_type? : TouchType,
) -> TouchInit {
  touch_init_ffi(
    TJsValue::to_js(identifier),
    TJsValue::to_js(target),
    opt_to_js(client_x),
    opt_to_js(client_y),
    opt_to_js(screen_x),
    opt_to_js(screen_y),
    opt_to_js(page_x),
    opt_to_js(page_y),
    opt_to_js(radius_x),
    opt_to_js(radius_y),
    opt_to_js(rotation_angle),
    opt_to_js(force),
    opt_to_js(altitude_angle),
    opt_to_js(azimuth_angle),
    opt_to_js(touch_type),
  )
}

///|
pub fn TouchInit::empty() -> TouchInit {
  touch_init_empty_ffi()
}

///|
pub fn TouchInit::identifier(self : TouchInit) -> Int {
  touch_init_get_identifier_ffi(TJsValue::to_js(self))
}

///|
pub fn TouchInit::target(self : TouchInit) -> EventTarget {
  touch_init_get_target_ffi(TJsValue::to_js(self))
}

///|
pub fn TouchInit::client_x(self : TouchInit) -> Double? {
  let result = touch_init_get_client_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::client_y(self : TouchInit) -> Double? {
  let result = touch_init_get_client_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::screen_x(self : TouchInit) -> Double? {
  let result = touch_init_get_screen_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::screen_y(self : TouchInit) -> Double? {
  let result = touch_init_get_screen_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::page_x(self : TouchInit) -> Double? {
  let result = touch_init_get_page_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::page_y(self : TouchInit) -> Double? {
  let result = touch_init_get_page_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::radius_x(self : TouchInit) -> Float? {
  let result = touch_init_get_radius_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::radius_y(self : TouchInit) -> Float? {
  let result = touch_init_get_radius_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::rotation_angle(self : TouchInit) -> Float? {
  let result = touch_init_get_rotation_angle_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::force(self : TouchInit) -> Float? {
  let result = touch_init_get_force_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::altitude_angle(self : TouchInit) -> Double? {
  let result = touch_init_get_altitude_angle_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::azimuth_angle(self : TouchInit) -> Double? {
  let result = touch_init_get_azimuth_angle_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn TouchInit::touch_type(self : TouchInit) -> TouchType? {
  let result = touch_init_get_touch_type_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
