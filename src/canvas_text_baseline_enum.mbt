// Auto-generated MoonBit bindings for CanvasTextBaseline enum
// Do not edit manually

///|
pub(all) enum CanvasTextBaseline {
  Top
  Hanging
  Middle
  Alphabetic
  Ideographic
  Bottom
} derive(Eq,Show)

///|
pub fn CanvasTextBaseline::from(value: String) -> CanvasTextBaseline {
  match value {
    "top" => Top
    "hanging" => Hanging
    "middle" => Middle
    "alphabetic" => Alphabetic
    "ideographic" => Ideographic
    "bottom" => Bottom
    _ => Top
  }
}

///|
pub fn CanvasTextBaseline::to_js(self : CanvasTextBaseline) -> String {
  match self {
    Top => "top"
    Hanging => "hanging"
    Middle => "middle"
    Alphabetic => "alphabetic"
    Ideographic => "ideographic"
    Bottom => "bottom"
  }
}
