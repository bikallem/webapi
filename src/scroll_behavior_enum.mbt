// Do not edit. This file is generated.
// MoonBit type: ScrollBehavior
// Specifications: cssom-view.idl

pub(all) enum ScrollBehavior {
  Auto
  Instant
  Smooth
} derive(Eq,Show)

pub impl TJsValue for ScrollBehavior with to_js(self: ScrollBehavior) -> JsValue {
  match self {
    ScrollBehavior::Auto => TJsValue::to_js("auto")
    ScrollBehavior::Instant => TJsValue::to_js("instant")
    ScrollBehavior::Smooth => TJsValue::to_js("smooth")
  }
}

pub fn ScrollBehavior::from(value: String) -> ScrollBehavior? {
  match value {
    "auto" => Some(ScrollBehavior::Auto)
    "instant" => Some(ScrollBehavior::Instant)
    "smooth" => Some(ScrollBehavior::Smooth)
    _ => None
  }
}