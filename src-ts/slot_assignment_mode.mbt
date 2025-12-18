// Auto-generated MoonBit bindings for SlotAssignmentMode

// Do not edit manually

///|
pub(all) enum SlotAssignmentMode {
  Manual
  Named
} derive(Eq)

///|
pub impl TJsValue for SlotAssignmentMode with to_js(self) {
  match self {
    SlotAssignmentMode::Manual => TJsValue::to_js("manual")
    SlotAssignmentMode::Named => TJsValue::to_js("named")
  }
}

///|
pub fn SlotAssignmentMode::from(value : String) -> SlotAssignmentMode? {
  match value {
    "manual" => Some(SlotAssignmentMode::Manual)
    "named" => Some(SlotAssignmentMode::Named)
    _ => None
  }
}

///|
pub impl Show for SlotAssignmentMode with output(self, logger) {
  match self {
    SlotAssignmentMode::Manual => logger.write_string("manual")
    SlotAssignmentMode::Named => logger.write_string("named")
  }
}