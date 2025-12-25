// Do not edit. This file is generated.
// MoonBit type: CanvasPattern
// Specifications: html.idl

///|
#external
pub type CanvasPattern

///|
pub impl TJsValue for CanvasPattern with to_js(self : CanvasPattern) -> JsValue = "%identity"

///|
pub fn[T : TCanvasPattern] CanvasPattern::into(self : CanvasPattern) -> T = "%identity"

///|
pub impl TCanvasPattern for CanvasPattern

///|
pub trait TCanvasPattern: TJsValue {
  set_transform(self : Self, transform? : DOMMatrix2DInit) -> Unit = _
}

///|
extern "js" fn canvas_pattern_set_transform_ffi(
  obj : JsValue,
  transform : JsValue,
) -> Unit = "(obj, transform) => obj.setTransform(obj, transform)"

///|
impl TCanvasPattern with set_transform(
  self : Self,
  transform? : DOMMatrix2DInit = DOMMatrix2DInit::empty(),
) -> Unit {
  canvas_pattern_set_transform_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(transform),
  )
}
