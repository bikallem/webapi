// Do not edit. This file is generated.
// MoonBit type: SlotAssignmentMode
// Specifications: dom.idl

///|
pub(all) enum SlotAssignmentMode {
  Manual
  Named
} derive(Eq)

///|
pub impl Show for SlotAssignmentMode with output(
  self : SlotAssignmentMode,
  logger : &Logger,
) -> Unit {
  match self {
    SlotAssignmentMode::Manual => logger.write_string("Manual")
    SlotAssignmentMode::Named => logger.write_string("Named")
  }
}

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

///|
fn SlotAssignmentMode::from_unchecked(value : String) -> SlotAssignmentMode {
  match value {
    "manual" => SlotAssignmentMode::Manual
    "named" => SlotAssignmentMode::Named
    _ => abort("unknown enum value")
  }
}

///|
pub fn SlotAssignmentMode::value(self : SlotAssignmentMode) -> String {
  let buf = StringBuilder::new()
  match self {
    SlotAssignmentMode::Manual => buf.write_string("manual")
    SlotAssignmentMode::Named => buf.write_string("named")
  }
  buf.to_string()
}
