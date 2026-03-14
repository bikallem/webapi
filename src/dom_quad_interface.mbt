// Do not edit. This file is generated.
// MoonBit type: DOMQuad
// Specifications: geometry.idl

/// [DOMQuad](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad)
#external
pub type DOMQuad

pub impl TJsValue for DOMQuad with to_js(self: DOMQuad) -> JsValue = "%identity"

pub impl FromJsAny for DOMQuad with from_js_any(value : JsAny) -> DOMQuad = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMQuad] DOMQuad::into(self : DOMQuad) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMQuad] DOMQuad::unsafe_into(self : DOMQuad) -> T = "%identity"

pub impl HasConstructor for DOMQuad with constructor_name() { "DOMQuad" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMQuad + HasConstructor] DOMQuad::try_into(self : DOMQuad) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMQuad for DOMQuad

pub fn DOMQuad::new(p1? : DOMPointInit, 
p2? : DOMPointInit, 
p3? : DOMPointInit, 
p4? : DOMPointInit) -> DOMQuad {
  dom_quad_new_ffi(opt_to_js(p1), opt_to_js(p2), opt_to_js(p3), opt_to_js(p4))
}

/// [DOMQuad](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad) interface.
pub trait TDOMQuad: TJsValue {
  p1(self : Self) -> DOMPoint = _
  p2(self : Self) -> DOMPoint = _
  p3(self : Self) -> DOMPoint = _
  p4(self : Self) -> DOMPoint = _
  get_bounds(self : Self) -> DOMRect = _
  to_json(self : Self) -> JsValue = _
}

/// [DOMQuad.fromRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/fromRect)
pub fn DOMQuad::from_rect(other? : DOMRectInit) -> DOMQuad {
  dom_quad_from_rect_ffi(opt_to_js(other))
}

/// [DOMQuad.fromQuad](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/fromQuad)
pub fn DOMQuad::from_quad(other? : DOMQuadInit) -> DOMQuad {
  dom_quad_from_quad_ffi(opt_to_js(other))
}

/// [DOMQuad.p1](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p1)
impl TDOMQuad with p1(self : Self) -> DOMPoint {
  dom_quad_p1_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.p2](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p2)
impl TDOMQuad with p2(self : Self) -> DOMPoint {
  dom_quad_p2_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.p3](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p3)
impl TDOMQuad with p3(self : Self) -> DOMPoint {
  dom_quad_p3_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.p4](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p4)
impl TDOMQuad with p4(self : Self) -> DOMPoint {
  dom_quad_p4_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.getBounds](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/getBounds)
impl TDOMQuad with get_bounds(self : Self) -> DOMRect {
  dom_quad_get_bounds_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/toJSON)
impl TDOMQuad with to_json(self : Self) -> JsValue {
  dom_quad_to_json_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn dom_quad_new_ffi(p1: JsValue, p2: JsValue, p3: JsValue, p4: JsValue) -> DOMQuad = "(p1, p2, p3, p4) => new DOMQuad(p1, p2, p3, p4)"

#cfg(target="js")
extern "js" fn dom_quad_from_rect_ffi_js(other: JsValue) -> JsValue = "(other) => DOMQuad.fromRect(other)"

///|
#cfg(target="js")
fn dom_quad_from_rect_ffi(other: JsValue) -> DOMQuad {
  dom_quad_from_rect_ffi_js(other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_quad_from_quad_ffi_js(other: JsValue) -> JsValue = "(other) => DOMQuad.fromQuad(other)"

///|
#cfg(target="js")
fn dom_quad_from_quad_ffi(other: JsValue) -> DOMQuad {
  dom_quad_from_quad_ffi_js(other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_quad_p1_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p1"

///|
#cfg(target="js")
fn dom_quad_p1_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p1_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_quad_p2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p2"

///|
#cfg(target="js")
fn dom_quad_p2_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p2_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_quad_p3_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p3"

///|
#cfg(target="js")
fn dom_quad_p3_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p3_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_quad_p4_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p4"

///|
#cfg(target="js")
fn dom_quad_p4_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p4_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_quad_get_bounds_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getBounds()"

///|
#cfg(target="js")
fn dom_quad_get_bounds_ffi(obj: JsValue) -> DOMRect {
  dom_quad_get_bounds_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_quad_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn dom_quad_to_json_ffi(obj: JsValue) -> JsValue {
  dom_quad_to_json_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn dom_quad_new_ffi(p1: JsValue, p2: JsValue, p3: JsValue, p4: JsValue) -> DOMQuad = "webapi_DOMQuad" "new"

#cfg(target="wasm-gc")
fn dom_quad_from_rect_ffi(other: JsValue) -> DOMQuad = "webapi_DOMQuad" "fromRect"

#cfg(target="wasm-gc")
fn dom_quad_from_quad_ffi(other: JsValue) -> DOMQuad = "webapi_DOMQuad" "fromQuad"

#cfg(target="wasm-gc")
fn dom_quad_p1_ffi(obj: JsValue) -> DOMPoint = "webapi_DOMQuad" "get_p1"

#cfg(target="wasm-gc")
fn dom_quad_p2_ffi(obj: JsValue) -> DOMPoint = "webapi_DOMQuad" "get_p2"

#cfg(target="wasm-gc")
fn dom_quad_p3_ffi(obj: JsValue) -> DOMPoint = "webapi_DOMQuad" "get_p3"

#cfg(target="wasm-gc")
fn dom_quad_p4_ffi(obj: JsValue) -> DOMPoint = "webapi_DOMQuad" "get_p4"

#cfg(target="wasm-gc")
fn dom_quad_get_bounds_ffi(obj: JsValue) -> DOMRect = "webapi_DOMQuad" "getBounds"

#cfg(target="wasm-gc")
fn dom_quad_to_json_ffi(obj: JsValue) -> JsValue = "webapi_DOMQuad" "toJSON"