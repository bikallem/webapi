// Do not edit. This file is generated.
// MoonBit type: ScrollRestoration
// Specifications: html.idl

///|
pub(all) enum ScrollRestoration {
  Auto
  Manual
} derive(Eq, Show)

///|
pub impl TJsValue for ScrollRestoration with to_js(self : ScrollRestoration) -> JsValue {
  match self {
    ScrollRestoration::Auto => TJsValue::to_js("auto")
    ScrollRestoration::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn ScrollRestoration::from(value : String) -> ScrollRestoration? {
  match value {
    "auto" => Some(ScrollRestoration::Auto)
    "manual" => Some(ScrollRestoration::Manual)
    _ => None
  }
}
