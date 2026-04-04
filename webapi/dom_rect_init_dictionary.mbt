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
  dom_rect_init_get_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMRectInit::y(self : DOMRectInit) -> Double? {
  dom_rect_init_get_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMRectInit::width(self : DOMRectInit) -> Double? {
  dom_rect_init_get_width_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMRectInit::height(self : DOMRectInit) -> Double? {
  dom_rect_init_get_height_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn dom_rect_init_empty_ffi() -> DOMRectInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn dom_rect_init_get_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
extern "js" fn dom_rect_init_get_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
extern "js" fn dom_rect_init_get_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
extern "js" fn dom_rect_init_get_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="wasm-gc")
fn dom_rect_init_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRectInit = "webapi_DOMRectInit" "new"

///|
#cfg(target="wasm-gc")
fn dom_rect_init_empty_ffi() -> DOMRectInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn dom_rect_init_get_x_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_x"

///|
#cfg(target="wasm-gc")
fn dom_rect_init_get_y_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_y"

///|
#cfg(target="wasm-gc")
fn dom_rect_init_get_width_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_width"

///|
#cfg(target="wasm-gc")
fn dom_rect_init_get_height_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_height"
