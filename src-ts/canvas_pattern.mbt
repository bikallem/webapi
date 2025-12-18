// Auto-generated MoonBit bindings for CanvasPattern

// Do not edit manually

///|
#external
pub type CanvasPattern

///|
pub trait TCanvasPattern: TJsValue {
  set_transform(self : Self, transform? : DOMMatrix2DInit) -> Unit = _
}

///|
pub impl TCanvasPattern for CanvasPattern

///|
pub impl TJsValue for CanvasPattern with to_js(self : CanvasPattern) -> JsValue = "%identity"

///|
fn canvas_pattern_set_transform_ffi(obj : JsValue, transform : JsValue) -> Unit = "webapi_CanvasPattern" "setTransform"

///|
impl TCanvasPattern with set_transform(self : Self, transform? : DOMMatrix2DInit = DOMMatrix2DInit::empty()) -> Unit {
  canvas_pattern_set_transform_ffi(TJsValue::to_js(self), TJsValue::to_js(transform))
}