// Do not edit. This file is generated.
// MoonBit type: FullscreenNavigationUI
// Specifications: fullscreen.idl

pub(all) enum FullscreenNavigationUI {
  Auto
  Show
  Hide
} derive(Eq,Show)

pub impl TJsValue for FullscreenNavigationUI with to_js(self: FullscreenNavigationUI) -> JsValue {
  match self {
    FullscreenNavigationUI::Auto => TJsValue::to_js("auto")
    FullscreenNavigationUI::Show => TJsValue::to_js("show")
    FullscreenNavigationUI::Hide => TJsValue::to_js("hide")
  }
}

pub fn FullscreenNavigationUI::from(value: String) -> FullscreenNavigationUI? {
  match value {
    "auto" => Some(FullscreenNavigationUI::Auto)
    "show" => Some(FullscreenNavigationUI::Show)
    "hide" => Some(FullscreenNavigationUI::Hide)
    _ => None
  }
}