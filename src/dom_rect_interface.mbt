// Do not edit. This file is generated.
// MoonBit type: DOMRect
// Specifications: geometry.idl

///|
/// [DOMRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect)
#external
pub type DOMRect

///|
pub impl TJsValue for DOMRect with to_js(self : DOMRect) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMRect with from_js_any(value : JsAny) -> DOMRect = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDOMRect] DOMRect::into(self : DOMRect) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDOMRect] DOMRect::unsafe_into(self : DOMRect) -> T = "%identity"

///|
pub impl HasConstructor for DOMRect with constructor_name() {
  "DOMRect"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMRect + HasConstructor] DOMRect::try_into(self : DOMRect) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TDOMRect for DOMRect

///|
pub impl TDOMRectReadOnly for DOMRect

///|
pub fn DOMRect::new(
  x? : Double,
  y? : Double,
  width? : Double,
  height? : Double,
) -> DOMRect {
  dom_rect_new_ffi(
    opt_to_js(x),
    opt_to_js(y),
    opt_to_js(width),
    opt_to_js(height),
  )
}

///|
/// [DOMRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect) interface.
pub trait TDOMRect: TDOMRectReadOnly {
  x(self : Self) -> Double = _
  set_x(self : Self, x : Double) -> Unit = _
  y(self : Self) -> Double = _
  set_y(self : Self, y : Double) -> Unit = _
  width(self : Self) -> Double = _
  set_width(self : Self, width : Double) -> Unit = _
  height(self : Self) -> Double = _
  set_height(self : Self, height : Double) -> Unit = _
}

///|
/// [DOMRect.fromRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/fromRect)
pub fn DOMRect::from_rect(other? : DOMRectInit) -> DOMRect {
  dom_rect_from_rect_ffi(opt_to_js(other))
}

///|
/// [DOMRect.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/x)
impl TDOMRect with x(self : Self) -> Double {
  dom_rect_x_ffi(TJsValue::to_js(self))
}

///|
/// [DOMRect.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/x)
impl TDOMRect with set_x(self : Self, x : Double) -> Unit {
  dom_rect_set_x_ffi(TJsValue::to_js(self), TJsValue::to_js(x))
}

///|
/// [DOMRect.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/y)
impl TDOMRect with y(self : Self) -> Double {
  dom_rect_y_ffi(TJsValue::to_js(self))
}

///|
/// [DOMRect.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/y)
impl TDOMRect with set_y(self : Self, y : Double) -> Unit {
  dom_rect_set_y_ffi(TJsValue::to_js(self), TJsValue::to_js(y))
}

///|
/// [DOMRect.width](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/width)
impl TDOMRect with width(self : Self) -> Double {
  dom_rect_width_ffi(TJsValue::to_js(self))
}

///|
/// [DOMRect.width](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/width)
impl TDOMRect with set_width(self : Self, width : Double) -> Unit {
  dom_rect_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

///|
/// [DOMRect.height](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/height)
impl TDOMRect with height(self : Self) -> Double {
  dom_rect_height_ffi(TJsValue::to_js(self))
}

///|
/// [DOMRect.height](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/height)
impl TDOMRect with set_height(self : Self, height : Double) -> Unit {
  dom_rect_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

///|
#cfg(target="js")
extern "js" fn dom_rect_new_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRect = "(x, y, width, height) => new DOMRect(x, y, width, height)"

///|
#cfg(target="js")
extern "js" fn dom_rect_from_rect_ffi_js(other : JsValue) -> JsValue = "(other) => DOMRect.fromRect(other)"

///|
#cfg(target="js")
fn dom_rect_from_rect_ffi(other : JsValue) -> DOMRect {
  dom_rect_from_rect_ffi_js(other).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_rect_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn dom_rect_x_ffi(obj : JsValue) -> Double {
  dom_rect_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_rect_set_x_ffi(obj : JsValue, x : JsValue) -> Unit = "(obj, x) => { obj.x = x; }"

///|
#cfg(target="js")
extern "js" fn dom_rect_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn dom_rect_y_ffi(obj : JsValue) -> Double {
  dom_rect_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_rect_set_y_ffi(obj : JsValue, y : JsValue) -> Unit = "(obj, y) => { obj.y = y; }"

///|
#cfg(target="js")
extern "js" fn dom_rect_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn dom_rect_width_ffi(obj : JsValue) -> Double {
  dom_rect_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_rect_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="js")
extern "js" fn dom_rect_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn dom_rect_height_ffi(obj : JsValue) -> Double {
  dom_rect_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_rect_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

///|
#cfg(target="wasm-gc")
fn dom_rect_new_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRect = "webapi_DOMRect" "new"

///|
#cfg(target="wasm-gc")
fn dom_rect_from_rect_ffi(other : JsValue) -> DOMRect = "webapi_DOMRect" "fromRect"

///|
#cfg(target="wasm-gc")
fn dom_rect_x_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "get_x"

///|
#cfg(target="wasm-gc")
fn dom_rect_set_x_ffi(obj : JsValue, x : JsValue) -> Unit = "webapi_DOMRect" "set_x"

///|
#cfg(target="wasm-gc")
fn dom_rect_y_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "get_y"

///|
#cfg(target="wasm-gc")
fn dom_rect_set_y_ffi(obj : JsValue, y : JsValue) -> Unit = "webapi_DOMRect" "set_y"

///|
#cfg(target="wasm-gc")
fn dom_rect_width_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "get_width"

///|
#cfg(target="wasm-gc")
fn dom_rect_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_DOMRect" "set_width"

///|
#cfg(target="wasm-gc")
fn dom_rect_height_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "get_height"

///|
#cfg(target="wasm-gc")
fn dom_rect_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_DOMRect" "set_height"
