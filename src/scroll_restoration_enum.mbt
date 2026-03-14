// Do not edit. This file is generated.
// MoonBit type: ScrollRestoration
// Specifications: html.idl

pub(all) enum ScrollRestoration {
  Auto
  Manual
} derive(Eq)

pub impl Show for ScrollRestoration with output(self : ScrollRestoration, logger : &Logger) -> Unit {
  match self {
    ScrollRestoration::Auto => logger.write_string("Auto")
    ScrollRestoration::Manual => logger.write_string("Manual")
  }
}

pub impl TJsValue for ScrollRestoration with to_js(self: ScrollRestoration) -> JsValue {
  match self {
    ScrollRestoration::Auto => TJsValue::to_js("auto")
    ScrollRestoration::Manual => TJsValue::to_js("manual")
  }
}

pub fn ScrollRestoration::from(value: String) -> ScrollRestoration? {
  match value {
    "auto" => Some(ScrollRestoration::Auto)
    "manual" => Some(ScrollRestoration::Manual)
    _ => None
  }
}

fn ScrollRestoration::from_unchecked(value: String) -> ScrollRestoration {
  match value {
    "auto" => ScrollRestoration::Auto
    "manual" => ScrollRestoration::Manual
    _ => ScrollRestoration::Auto
  }
}

pub fn ScrollRestoration::value(self: ScrollRestoration) -> String {
  match self {
    ScrollRestoration::Auto => "auto"
    ScrollRestoration::Manual => "manual"
  }
}

pub impl FromJsAny for ScrollRestoration with from_js_any(value : JsAny) -> ScrollRestoration {
  ScrollRestoration::from_unchecked(value)
}