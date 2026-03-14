// Do not edit. This file is generated.
// MoonBit type: DOMPoint
// Specifications: geometry.idl

/// [DOMPoint](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint)
#external
pub type DOMPoint

pub impl TJsValue for DOMPoint with to_js(self: DOMPoint) -> JsValue = "%identity"

pub impl FromJsAny for DOMPoint with from_js_any(value : JsAny) -> DOMPoint = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMPoint] DOMPoint::into(self : DOMPoint) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMPoint] DOMPoint::unsafe_into(self : DOMPoint) -> T = "%identity"

pub impl HasConstructor for DOMPoint with constructor_name() { "DOMPoint" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMPoint + HasConstructor] DOMPoint::try_into(self : DOMPoint) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMPoint for DOMPoint

pub impl TDOMPointReadOnly for DOMPoint

pub fn DOMPoint::new(x? : Double, 
y? : Double, 
z? : Double, 
w? : Double) -> DOMPoint {
  dom_point_new_ffi(opt_to_js(x), opt_to_js(y), opt_to_js(z), opt_to_js(w))
}

/// [DOMPoint](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint) interface.
pub trait TDOMPoint: TDOMPointReadOnly {
  x(self : Self) -> Double = _
  set_x(self : Self, x : Double) -> Unit = _
  y(self : Self) -> Double = _
  set_y(self : Self, y : Double) -> Unit = _
  z(self : Self) -> Double = _
  set_z(self : Self, z : Double) -> Unit = _
  w(self : Self) -> Double = _
  set_w(self : Self, w : Double) -> Unit = _
}

/// [DOMPoint.fromPoint](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/fromPoint)
pub fn DOMPoint::from_point(other? : DOMPointInit) -> DOMPoint {
  dom_point_from_point_ffi(opt_to_js(other))
}

/// [DOMPoint.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/x)
impl TDOMPoint with x(self : Self) -> Double {
  dom_point_x_ffi(TJsValue::to_js(self))
}

/// [DOMPoint.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/x)
impl TDOMPoint with set_x(self : Self, 
x : Double) -> Unit {
  dom_point_set_x_ffi(TJsValue::to_js(self), TJsValue::to_js(x))
}

/// [DOMPoint.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/y)
impl TDOMPoint with y(self : Self) -> Double {
  dom_point_y_ffi(TJsValue::to_js(self))
}

/// [DOMPoint.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/y)
impl TDOMPoint with set_y(self : Self, 
y : Double) -> Unit {
  dom_point_set_y_ffi(TJsValue::to_js(self), TJsValue::to_js(y))
}

/// [DOMPoint.z](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/z)
impl TDOMPoint with z(self : Self) -> Double {
  dom_point_z_ffi(TJsValue::to_js(self))
}

/// [DOMPoint.z](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/z)
impl TDOMPoint with set_z(self : Self, 
z : Double) -> Unit {
  dom_point_set_z_ffi(TJsValue::to_js(self), TJsValue::to_js(z))
}

/// [DOMPoint.w](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/w)
impl TDOMPoint with w(self : Self) -> Double {
  dom_point_w_ffi(TJsValue::to_js(self))
}

/// [DOMPoint.w](https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint/w)
impl TDOMPoint with set_w(self : Self, 
w : Double) -> Unit {
  dom_point_set_w_ffi(TJsValue::to_js(self), TJsValue::to_js(w))
}

#cfg(target="js")
extern "js" fn dom_point_new_ffi(x: JsValue, y: JsValue, z: JsValue, w: JsValue) -> DOMPoint = "(x, y, z, w) => new DOMPoint(x, y, z, w)"

#cfg(target="js")
extern "js" fn dom_point_from_point_ffi_js(other: JsValue) -> JsValue = "(other) => DOMPoint.fromPoint(other)"

///|
#cfg(target="js")
fn dom_point_from_point_ffi(other: JsValue) -> DOMPoint {
  dom_point_from_point_ffi_js(other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_point_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn dom_point_x_ffi(obj: JsValue) -> Double {
  dom_point_x_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_point_set_x_ffi(obj: JsValue, x: JsValue) -> Unit = "(obj, x) => { obj.x = x; }"

#cfg(target="js")
extern "js" fn dom_point_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn dom_point_y_ffi(obj: JsValue) -> Double {
  dom_point_y_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_point_set_y_ffi(obj: JsValue, y: JsValue) -> Unit = "(obj, y) => { obj.y = y; }"

#cfg(target="js")
extern "js" fn dom_point_z_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.z"

///|
#cfg(target="js")
fn dom_point_z_ffi(obj: JsValue) -> Double {
  dom_point_z_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_point_set_z_ffi(obj: JsValue, z: JsValue) -> Unit = "(obj, z) => { obj.z = z; }"

#cfg(target="js")
extern "js" fn dom_point_w_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.w"

///|
#cfg(target="js")
fn dom_point_w_ffi(obj: JsValue) -> Double {
  dom_point_w_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_point_set_w_ffi(obj: JsValue, w: JsValue) -> Unit = "(obj, w) => { obj.w = w; }"

#cfg(target="wasm-gc")
fn dom_point_new_ffi(x: JsValue, y: JsValue, z: JsValue, w: JsValue) -> DOMPoint = "webapi_DOMPoint" "new"

#cfg(target="wasm-gc")
fn dom_point_from_point_ffi(other: JsValue) -> DOMPoint = "webapi_DOMPoint" "fromPoint"

#cfg(target="wasm-gc")
fn dom_point_x_ffi(obj: JsValue) -> Double = "webapi_DOMPoint" "get_x"

#cfg(target="wasm-gc")
fn dom_point_set_x_ffi(obj: JsValue, x: JsValue) -> Unit = "webapi_DOMPoint" "set_x"

#cfg(target="wasm-gc")
fn dom_point_y_ffi(obj: JsValue) -> Double = "webapi_DOMPoint" "get_y"

#cfg(target="wasm-gc")
fn dom_point_set_y_ffi(obj: JsValue, y: JsValue) -> Unit = "webapi_DOMPoint" "set_y"

#cfg(target="wasm-gc")
fn dom_point_z_ffi(obj: JsValue) -> Double = "webapi_DOMPoint" "get_z"

#cfg(target="wasm-gc")
fn dom_point_set_z_ffi(obj: JsValue, z: JsValue) -> Unit = "webapi_DOMPoint" "set_z"

#cfg(target="wasm-gc")
fn dom_point_w_ffi(obj: JsValue) -> Double = "webapi_DOMPoint" "get_w"

#cfg(target="wasm-gc")
fn dom_point_set_w_ffi(obj: JsValue, w: JsValue) -> Unit = "webapi_DOMPoint" "set_w"