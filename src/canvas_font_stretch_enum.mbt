// Do not edit. This file is generated.
// MoonBit type: CanvasFontStretch
// Specifications: html.idl

pub(all) enum CanvasFontStretch {
  UltraCondensed
  ExtraCondensed
  Condensed
  SemiCondensed
  Normal
  SemiExpanded
  Expanded
  ExtraExpanded
  UltraExpanded
} derive(Eq,Show)

pub impl TJsValue for CanvasFontStretch with to_js(self: CanvasFontStretch) -> JsValue {
  match self {
    CanvasFontStretch::UltraCondensed => TJsValue::to_js("ultra-condensed")
    CanvasFontStretch::ExtraCondensed => TJsValue::to_js("extra-condensed")
    CanvasFontStretch::Condensed => TJsValue::to_js("condensed")
    CanvasFontStretch::SemiCondensed => TJsValue::to_js("semi-condensed")
    CanvasFontStretch::Normal => TJsValue::to_js("normal")
    CanvasFontStretch::SemiExpanded => TJsValue::to_js("semi-expanded")
    CanvasFontStretch::Expanded => TJsValue::to_js("expanded")
    CanvasFontStretch::ExtraExpanded => TJsValue::to_js("extra-expanded")
    CanvasFontStretch::UltraExpanded => TJsValue::to_js("ultra-expanded")
  }
}

pub fn CanvasFontStretch::from(value: String) -> CanvasFontStretch? {
  match value {
    "ultra-condensed" => Some(CanvasFontStretch::UltraCondensed)
    "extra-condensed" => Some(CanvasFontStretch::ExtraCondensed)
    "condensed" => Some(CanvasFontStretch::Condensed)
    "semi-condensed" => Some(CanvasFontStretch::SemiCondensed)
    "normal" => Some(CanvasFontStretch::Normal)
    "semi-expanded" => Some(CanvasFontStretch::SemiExpanded)
    "expanded" => Some(CanvasFontStretch::Expanded)
    "extra-expanded" => Some(CanvasFontStretch::ExtraExpanded)
    "ultra-expanded" => Some(CanvasFontStretch::UltraExpanded)
    _ => None
  }
}