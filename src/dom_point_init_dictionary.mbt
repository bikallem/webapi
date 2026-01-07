// Do not edit. This file is generated.
// MoonBit type: DOMPointInit
// Specifications: geometry.idl

///|
/// [DOMPointInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointInit)
#external
pub type DOMPointInit

///|
pub impl TJsValue for DOMPointInit with to_js(self : DOMPointInit) -> JsValue = "%identity"

///|
extern "js" fn dom_point_init_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointInit =
  #|(x, y, z, w) => {
  #|  const obj = {};
  #|  if (x !== undefined) obj.x = x;
  #|  if (y !== undefined) obj.y = y;
  #|  if (z !== undefined) obj.z = z;
  #|  if (w !== undefined) obj.w = w;
  #|  return obj;
  #|}

///|
pub fn DOMPointInit::new(
  x? : Double = (0 : Double),
  y? : Double = (0 : Double),
  z? : Double = (0 : Double),
  w? : Double = (1 : Double),
) -> DOMPointInit {
  dom_point_init_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(w),
  )
}

///|
extern "js" fn dom_point_init_empty_ffi() -> DOMPointInit = "() => {}"

///|
pub fn DOMPointInit::empty() -> DOMPointInit {
  dom_point_init_empty_ffi()
}
