// Auto-generated MoonBit bindings for CanvasTextRendering enum
// Do not edit manually

///|
pub(all) enum CanvasTextRendering {
  Auto
  OptimizeSpeed
  OptimizeLegibility
  GeometricPrecision
} derive(Eq,Show)

///|
pub fn CanvasTextRendering::from(value: String) -> CanvasTextRendering {
  match value {
    "auto" => Auto
    "optimizeSpeed" => OptimizeSpeed
    "optimizeLegibility" => OptimizeLegibility
    "geometricPrecision" => GeometricPrecision
    _ => Auto
  }
}

///|
pub fn CanvasTextRendering::to_js(self : CanvasTextRendering) -> String {
  match self {
    Auto => "auto"
    OptimizeSpeed => "optimizeSpeed"
    OptimizeLegibility => "optimizeLegibility"
    GeometricPrecision => "geometricPrecision"
  }
}
