// Auto-generated MoonBit bindings for SlotAssignmentMode enum
// Do not edit manually

///|
pub(all) enum SlotAssignmentMode {
  Manual
  Named
} derive(Eq,Show)

///|
pub fn SlotAssignmentMode::from(value: String) -> SlotAssignmentMode {
  match value {
    "manual" => Manual
    "named" => Named
    _ => Manual
  }
}

///|
pub fn SlotAssignmentMode::to_js(self : SlotAssignmentMode) -> String {
  match self {
    Manual => "manual"
    Named => "named"
  }
}
