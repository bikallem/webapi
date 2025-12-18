// Auto-generated MoonBit bindings for CanPlayTypeResult

// Do not edit manually

///|
pub(all) enum CanPlayTypeResult {
  Empty
  Maybe
  Probably
} derive(Eq)

///|
pub impl TJsValue for CanPlayTypeResult with to_js(self) {
  match self {
    CanPlayTypeResult::Empty => TJsValue::to_js("")
    CanPlayTypeResult::Maybe => TJsValue::to_js("maybe")
    CanPlayTypeResult::Probably => TJsValue::to_js("probably")
  }
}

///|
pub fn CanPlayTypeResult::from(value : String) -> CanPlayTypeResult? {
  match value {
    "" => Some(CanPlayTypeResult::Empty)
    "maybe" => Some(CanPlayTypeResult::Maybe)
    "probably" => Some(CanPlayTypeResult::Probably)
    _ => None
  }
}

///|
pub impl Show for CanPlayTypeResult with output(self, logger) {
  match self {
    CanPlayTypeResult::Empty => logger.write_string("")
    CanPlayTypeResult::Maybe => logger.write_string("maybe")
    CanPlayTypeResult::Probably => logger.write_string("probably")
  }
}