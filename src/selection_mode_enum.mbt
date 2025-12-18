// Auto-generated MoonBit bindings for SelectionMode enum
// Do not edit manually

///|
pub(all) enum SelectionMode {
  Select
  Start
  End
  Preserve
} derive(Eq,Show)

///|
pub fn SelectionMode::from(value: String) -> SelectionMode {
  match value {
    "select" => Select
    "start" => Start
    "end" => End
    "preserve" => Preserve
    _ => Select
  }
}

///|
pub fn SelectionMode::to_js(self : SelectionMode) -> String {
  match self {
    Select => "select"
    Start => "start"
    End => "end"
    Preserve => "preserve"
  }
}
