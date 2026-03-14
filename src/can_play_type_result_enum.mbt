// Do not edit. This file is generated.
// MoonBit type: CanPlayTypeResult
// Specifications: html.idl

pub(all) enum CanPlayTypeResult {
  Empty
  Maybe
  Probably
} derive(Eq)

pub impl Show for CanPlayTypeResult with output(self : CanPlayTypeResult, logger : &Logger) -> Unit {
  match self {
    CanPlayTypeResult::Empty => logger.write_string("Empty")
    CanPlayTypeResult::Maybe => logger.write_string("Maybe")
    CanPlayTypeResult::Probably => logger.write_string("Probably")
  }
}

pub impl TJsValue for CanPlayTypeResult with to_js(self: CanPlayTypeResult) -> JsValue {
  match self {
    CanPlayTypeResult::Empty => TJsValue::to_js("")
    CanPlayTypeResult::Maybe => TJsValue::to_js("maybe")
    CanPlayTypeResult::Probably => TJsValue::to_js("probably")
  }
}

pub fn CanPlayTypeResult::from(value: String) -> CanPlayTypeResult? {
  match value {
    "" => Some(CanPlayTypeResult::Empty)
    "maybe" => Some(CanPlayTypeResult::Maybe)
    "probably" => Some(CanPlayTypeResult::Probably)
    _ => None
  }
}

fn CanPlayTypeResult::from_unchecked(value: String) -> CanPlayTypeResult {
  match value {
    "" => CanPlayTypeResult::Empty
    "maybe" => CanPlayTypeResult::Maybe
    "probably" => CanPlayTypeResult::Probably
    _ => CanPlayTypeResult::Empty
  }
}

pub fn CanPlayTypeResult::value(self: CanPlayTypeResult) -> String {
  match self {
    CanPlayTypeResult::Empty => ""
    CanPlayTypeResult::Maybe => "maybe"
    CanPlayTypeResult::Probably => "probably"
  }
}

pub impl FromJsAny for CanPlayTypeResult with from_js_any(value : JsAny) -> CanPlayTypeResult {
  CanPlayTypeResult::from_unchecked(value)
}