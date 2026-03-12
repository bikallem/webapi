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
pub impl FromJsAny for DOMPointInit with from_js_any(value : JsAny) -> DOMPointInit = "%identity"

///|
pub fn DOMPointInit::new(
  x? : Double,
  y? : Double,
  z? : Double,
  w? : Double,
) -> DOMPointInit {
  dom_point_init_ffi(opt_to_js(x), opt_to_js(y), opt_to_js(z), opt_to_js(w))
}

///|
pub fn DOMPointInit::empty() -> DOMPointInit {
  dom_point_init_empty_ffi()
}

///|
pub fn DOMPointInit::x(self : DOMPointInit) -> Double? {
  dom_point_init_get_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMPointInit::y(self : DOMPointInit) -> Double? {
  dom_point_init_get_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMPointInit::z(self : DOMPointInit) -> Double? {
  dom_point_init_get_z_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMPointInit::w(self : DOMPointInit) -> Double? {
  dom_point_init_get_w_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn dom_point_init_empty_ffi() -> DOMPointInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn dom_point_init_get_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
extern "js" fn dom_point_init_get_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
extern "js" fn dom_point_init_get_z_ffi(obj : JsValue) -> JsValue = "(obj) => obj.z"

///|
#cfg(target="js")
extern "js" fn dom_point_init_get_w_ffi(obj : JsValue) -> JsValue = "(obj) => obj.w"

///|
#cfg(target="wasm-gc")
fn dom_point_init_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointInit = "webapi_DOMPointInit" "new"

///|
#cfg(target="wasm-gc")
fn dom_point_init_empty_ffi() -> DOMPointInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn dom_point_init_get_x_ffi(obj : JsValue) -> JsValue = "webapi_DOMPointInit" "get_x"

///|
#cfg(target="wasm-gc")
fn dom_point_init_get_y_ffi(obj : JsValue) -> JsValue = "webapi_DOMPointInit" "get_y"

///|
#cfg(target="wasm-gc")
fn dom_point_init_get_z_ffi(obj : JsValue) -> JsValue = "webapi_DOMPointInit" "get_z"

///|
#cfg(target="wasm-gc")
fn dom_point_init_get_w_ffi(obj : JsValue) -> JsValue = "webapi_DOMPointInit" "get_w"
