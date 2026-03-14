// Do not edit. This file is generated.
// MoonBit type: PlaybackDirection
// Specifications: web-animations.idl

pub(all) enum PlaybackDirection {
  Normal
  Reverse
  Alternate
  AlternateReverse
} derive(Eq)

pub impl Show for PlaybackDirection with output(self : PlaybackDirection, logger : &Logger) -> Unit {
  match self {
    PlaybackDirection::Normal => logger.write_string("Normal")
    PlaybackDirection::Reverse => logger.write_string("Reverse")
    PlaybackDirection::Alternate => logger.write_string("Alternate")
    PlaybackDirection::AlternateReverse => logger.write_string("AlternateReverse")
  }
}

pub impl TJsValue for PlaybackDirection with to_js(self: PlaybackDirection) -> JsValue {
  match self {
    PlaybackDirection::Normal => TJsValue::to_js("normal")
    PlaybackDirection::Reverse => TJsValue::to_js("reverse")
    PlaybackDirection::Alternate => TJsValue::to_js("alternate")
    PlaybackDirection::AlternateReverse => TJsValue::to_js("alternate-reverse")
  }
}

pub fn PlaybackDirection::from(value: String) -> PlaybackDirection? {
  match value {
    "normal" => Some(PlaybackDirection::Normal)
    "reverse" => Some(PlaybackDirection::Reverse)
    "alternate" => Some(PlaybackDirection::Alternate)
    "alternate-reverse" => Some(PlaybackDirection::AlternateReverse)
    _ => None
  }
}

fn PlaybackDirection::from_unchecked(value: String) -> PlaybackDirection {
  match value {
    "normal" => PlaybackDirection::Normal
    "reverse" => PlaybackDirection::Reverse
    "alternate" => PlaybackDirection::Alternate
    "alternate-reverse" => PlaybackDirection::AlternateReverse
    _ => PlaybackDirection::Normal
  }
}

pub fn PlaybackDirection::value(self: PlaybackDirection) -> String {
  match self {
    PlaybackDirection::Normal => "normal"
    PlaybackDirection::Reverse => "reverse"
    PlaybackDirection::Alternate => "alternate"
    PlaybackDirection::AlternateReverse => "alternate-reverse"
  }
}

pub impl FromJsAny for PlaybackDirection with from_js_any(value : JsAny) -> PlaybackDirection {
  PlaybackDirection::from_unchecked(value)
}