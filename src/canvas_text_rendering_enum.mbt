// Do not edit. This file is generated.
// MoonBit type: CanvasTextRendering
// Specifications: html.idl

pub(all) enum CanvasTextRendering {
  Auto
  OptimizeSpeed
  OptimizeLegibility
  GeometricPrecision
} derive(Eq)

pub impl Show for CanvasTextRendering with output(self : CanvasTextRendering, logger : &Logger) -> Unit {
  match self {
    CanvasTextRendering::Auto => logger.write_string("Auto")
    CanvasTextRendering::OptimizeSpeed => logger.write_string("OptimizeSpeed")
    CanvasTextRendering::OptimizeLegibility => logger.write_string("OptimizeLegibility")
    CanvasTextRendering::GeometricPrecision => logger.write_string("GeometricPrecision")
  }
}

pub impl TJsValue for CanvasTextRendering with to_js(self: CanvasTextRendering) -> JsValue {
  match self {
    CanvasTextRendering::Auto => TJsValue::to_js("auto")
    CanvasTextRendering::OptimizeSpeed => TJsValue::to_js("optimizeSpeed")
    CanvasTextRendering::OptimizeLegibility => TJsValue::to_js("optimizeLegibility")
    CanvasTextRendering::GeometricPrecision => TJsValue::to_js("geometricPrecision")
  }
}

pub fn CanvasTextRendering::from(value: String) -> CanvasTextRendering? {
  match value {
    "auto" => Some(CanvasTextRendering::Auto)
    "optimizeSpeed" => Some(CanvasTextRendering::OptimizeSpeed)
    "optimizeLegibility" => Some(CanvasTextRendering::OptimizeLegibility)
    "geometricPrecision" => Some(CanvasTextRendering::GeometricPrecision)
    _ => None
  }
}

fn CanvasTextRendering::from_unchecked(value: String) -> CanvasTextRendering {
  match value {
    "auto" => CanvasTextRendering::Auto
    "optimizeSpeed" => CanvasTextRendering::OptimizeSpeed
    "optimizeLegibility" => CanvasTextRendering::OptimizeLegibility
    "geometricPrecision" => CanvasTextRendering::GeometricPrecision
    _ => CanvasTextRendering::Auto
  }
}

pub fn CanvasTextRendering::value(self: CanvasTextRendering) -> String {
  match self {
    CanvasTextRendering::Auto => "auto"
    CanvasTextRendering::OptimizeSpeed => "optimizeSpeed"
    CanvasTextRendering::OptimizeLegibility => "optimizeLegibility"
    CanvasTextRendering::GeometricPrecision => "geometricPrecision"
  }
}

pub impl FromJsAny for CanvasTextRendering with from_js_any(value : JsAny) -> CanvasTextRendering {
  CanvasTextRendering::from_unchecked(value)
}