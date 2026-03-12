// Do not edit. This file is generated.
// MoonBit type: ScrollBehavior
// Specifications: cssom-view.idl

pub(all) enum ScrollBehavior {
  Auto
  Instant
  Smooth
} derive(Eq)

pub impl Show for ScrollBehavior with output(self : ScrollBehavior, logger : &Logger) -> Unit {
  match self {
    ScrollBehavior::Auto => logger.write_string("Auto")
    ScrollBehavior::Instant => logger.write_string("Instant")
    ScrollBehavior::Smooth => logger.write_string("Smooth")
  }
}

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

fn ScrollBehavior::from_unchecked(value: String) -> ScrollBehavior {
  match value {
    "auto" => ScrollBehavior::Auto
    "instant" => ScrollBehavior::Instant
    "smooth" => ScrollBehavior::Smooth
    _ => abort("unknown ScrollBehavior enum value")
  }
}

pub fn ScrollBehavior::value(self: ScrollBehavior) -> String {
  match self {
    ScrollBehavior::Auto => "auto"
    ScrollBehavior::Instant => "instant"
    ScrollBehavior::Smooth => "smooth"
  }
}

pub impl FromJsAny for ScrollBehavior with from_js_any(value : JsAny) -> ScrollBehavior {
  ScrollBehavior::from_unchecked(value)
}