// Auto-generated MoonBit bindings for ScrollLogicalPosition enum
// Do not edit manually

///|
pub(all) enum ScrollLogicalPosition {
  Start
  Center
  End
  Nearest
} derive(Eq,Show)

///|
pub fn ScrollLogicalPosition::from(value: String) -> ScrollLogicalPosition {
  match value {
    "start" => Start
    "center" => Center
    "end" => End
    "nearest" => Nearest
    _ => Start
  }
}

///|
pub fn ScrollLogicalPosition::to_js(self : ScrollLogicalPosition) -> String {
  match self {
    Start => "start"
    Center => "center"
    End => "end"
    Nearest => "nearest"
  }
}
