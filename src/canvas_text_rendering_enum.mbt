// Do not edit. This file is generated.
// MoonBit type: CanvasTextRendering
// Specifications: html.idl

///|
pub(all) enum CanvasTextRendering {
  Auto
  OptimizeSpeed
  OptimizeLegibility
  GeometricPrecision
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasTextRendering with to_js(self : CanvasTextRendering) -> JsValue {
  match self {
    CanvasTextRendering::Auto => TJsValue::to_js("auto")
    CanvasTextRendering::OptimizeSpeed => TJsValue::to_js("optimizeSpeed")
    CanvasTextRendering::OptimizeLegibility =>
      TJsValue::to_js("optimizeLegibility")
    CanvasTextRendering::GeometricPrecision =>
      TJsValue::to_js("geometricPrecision")
  }
}

///|
pub fn CanvasTextRendering::from(value : String) -> CanvasTextRendering? {
  match value {
    "auto" => Some(CanvasTextRendering::Auto)
    "optimizeSpeed" => Some(CanvasTextRendering::OptimizeSpeed)
    "optimizeLegibility" => Some(CanvasTextRendering::OptimizeLegibility)
    "geometricPrecision" => Some(CanvasTextRendering::GeometricPrecision)
    _ => None
  }
}
