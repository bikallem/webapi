// Do not edit. This file is generated.
// MoonBit type: DOMRectInit
// Specifications: geometry.idl

///|
/// [DOMRectInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectInit)
#external
pub type DOMRectInit

///|
pub impl TJsValue for DOMRectInit with to_js(self : DOMRectInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMRectInit with from_js_any(value : JsAny) -> DOMRectInit = "%identity"

///|
pub fn DOMRectInit::new(
  x? : Double,
  y? : Double,
  width? : Double,
  height? : Double,
) -> DOMRectInit {
  dom_rect_init_ffi(
    opt_to_js(x),
    opt_to_js(y),
    opt_to_js(width),
    opt_to_js(height),
  )
}

///|
pub fn DOMRectInit::empty() -> DOMRectInit {
  dom_rect_init_empty_ffi()
}

///|
pub fn DOMRectInit::x(self : DOMRectInit) -> Double? {
  let result = dom_rect_init_get_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMRectInit::y(self : DOMRectInit) -> Double? {
  let result = dom_rect_init_get_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMRectInit::width(self : DOMRectInit) -> Double? {
  let result = dom_rect_init_get_width_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMRectInit::height(self : DOMRectInit) -> Double? {
  let result = dom_rect_init_get_height_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
