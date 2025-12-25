// Do not edit. This file is generated.
// MoonBit type: DOMRectInit
// Specifications: geometry.idl

///|
#external
pub type DOMRectInit

///|
pub impl TJsValue for DOMRectInit with to_js(self : DOMRectInit) -> JsValue = "%identity"

///|
extern "js" fn dom_rect_init_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRectInit =
  #|(x, y, width, height) => {
  #|  const obj = {};
  #|  if (x !== undefined) obj.x = x;
  #|  if (y !== undefined) obj.y = y;
  #|  if (width !== undefined) obj.width = width;
  #|  if (height !== undefined) obj.height = height;
  #|  return obj;
  #|}

///|
pub fn DOMRectInit::new(
  x? : Double = 0,
  y? : Double = 0,
  width? : Double = 0,
  height? : Double = 0,
) -> DOMRectInit {
  dom_rect_init_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn dom_rect_init_empty_ffi() -> DOMRectInit = "() => {}"

///|
pub fn DOMRectInit::empty() -> DOMRectInit {
  dom_rect_init_empty_ffi()
}
