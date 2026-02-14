// Do not edit. This file is generated.
// MoonBit type: FullscreenNavigationUI
// Specifications: fullscreen.idl

///|
pub(all) enum FullscreenNavigationUI {
  Auto
  Show
  Hide
} derive(Eq)

///|
pub impl Show for FullscreenNavigationUI with output(
  self : FullscreenNavigationUI,
  logger : &Logger,
) -> Unit {
  match self {
    FullscreenNavigationUI::Auto => logger.write_string("Auto")
    FullscreenNavigationUI::Show => logger.write_string("Show")
    FullscreenNavigationUI::Hide => logger.write_string("Hide")
  }
}

///|
pub impl TJsValue for FullscreenNavigationUI with to_js(
  self : FullscreenNavigationUI,
) -> JsValue {
  match self {
    FullscreenNavigationUI::Auto => TJsValue::to_js("auto")
    FullscreenNavigationUI::Show => TJsValue::to_js("show")
    FullscreenNavigationUI::Hide => TJsValue::to_js("hide")
  }
}

///|
pub fn FullscreenNavigationUI::from(value : String) -> FullscreenNavigationUI? {
  match value {
    "auto" => Some(FullscreenNavigationUI::Auto)
    "show" => Some(FullscreenNavigationUI::Show)
    "hide" => Some(FullscreenNavigationUI::Hide)
    _ => None
  }
}

///|
fn FullscreenNavigationUI::from_unchecked(
  value : String,
) -> FullscreenNavigationUI {
  match value {
    "auto" => FullscreenNavigationUI::Auto
    "show" => FullscreenNavigationUI::Show
    "hide" => FullscreenNavigationUI::Hide
    _ => abort("unknown enum value")
  }
}

///|
pub fn FullscreenNavigationUI::value(self : FullscreenNavigationUI) -> String {
  let buf = StringBuilder::new()
  match self {
    FullscreenNavigationUI::Auto => buf.write_string("auto")
    FullscreenNavigationUI::Show => buf.write_string("show")
    FullscreenNavigationUI::Hide => buf.write_string("hide")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for FullscreenNavigationUI with from_js_any(value : JsAny) -> FullscreenNavigationUI {
  FullscreenNavigationUI::from_unchecked(value)
}
