///|
pub(all) enum SlotAssignmentMode {
  Manual
  Named
} derive(Eq, Show)

///|
pub impl TJsValue for SlotAssignmentMode with to_js(self : SlotAssignmentMode) -> JsValue {
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
