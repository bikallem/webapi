// Auto-generated MoonBit bindings for CanvasTextRendering

// Do not edit manually

///|
pub(all) enum CanvasTextRendering {
  Auto
  Optimizespeed
  Optimizelegibility
  Geometricprecision
} derive(Eq)

///|
pub impl TJsValue for CanvasTextRendering with to_js(self) {
  match self {
    CanvasTextRendering::Auto => TJsValue::to_js("auto")
    CanvasTextRendering::Optimizespeed => TJsValue::to_js("optimizeSpeed")
    CanvasTextRendering::Optimizelegibility => TJsValue::to_js("optimizeLegibility")
    CanvasTextRendering::Geometricprecision => TJsValue::to_js("geometricPrecision")
  }
}

///|
pub fn CanvasTextRendering::from(value : String) -> CanvasTextRendering? {
  match value {
    "auto" => Some(CanvasTextRendering::Auto)
    "optimizeSpeed" => Some(CanvasTextRendering::Optimizespeed)
    "optimizeLegibility" => Some(CanvasTextRendering::Optimizelegibility)
    "geometricPrecision" => Some(CanvasTextRendering::Geometricprecision)
    _ => None
  }
}

///|
pub impl Show for CanvasTextRendering with output(self, logger) {
  match self {
    CanvasTextRendering::Auto => logger.write_string("auto")
    CanvasTextRendering::Optimizespeed => logger.write_string("optimizeSpeed")
    CanvasTextRendering::Optimizelegibility => logger.write_string("optimizeLegibility")
    CanvasTextRendering::Geometricprecision => logger.write_string("geometricPrecision")
  }
}