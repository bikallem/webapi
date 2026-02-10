// Do not edit. This file is generated.
// MoonBit type: CanPlayTypeResult
// Specifications: html.idl

pub(all) enum CanPlayTypeResult {
  Empty
  Maybe
  Probably
} derive(Eq,Show)

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