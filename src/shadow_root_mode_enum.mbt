// Do not edit. This file is generated.
// MoonBit type: ShadowRootMode
// Specifications: dom.idl

pub(all) enum ShadowRootMode {
  Open
  Closed
} derive(Eq,Show)

pub impl TJsValue for ShadowRootMode with to_js(self: ShadowRootMode) -> JsValue {
  match self {
    ShadowRootMode::Open => TJsValue::to_js("open")
    ShadowRootMode::Closed => TJsValue::to_js("closed")
  }
}

pub fn ShadowRootMode::from(value: String) -> ShadowRootMode? {
  match value {
    "open" => Some(ShadowRootMode::Open)
    "closed" => Some(ShadowRootMode::Closed)
    _ => None
  }
}