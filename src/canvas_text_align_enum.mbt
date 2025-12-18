// Auto-generated MoonBit bindings for CanvasTextAlign enum
// Do not edit manually

///|
pub(all) enum CanvasTextAlign {
  Start
  End
  Left
  Right
  Center
} derive(Eq,Show)

///|
pub fn CanvasTextAlign::from(value: String) -> CanvasTextAlign {
  match value {
    "start" => Start
    "end" => End
    "left" => Left
    "right" => Right
    "center" => Center
    _ => Start
  }
}

///|
pub fn CanvasTextAlign::to_js(self : CanvasTextAlign) -> String {
  match self {
    Start => "start"
    End => "end"
    Left => "left"
    Right => "right"
    Center => "center"
  }
}
