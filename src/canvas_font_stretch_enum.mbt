// Do not edit. This file is generated.
// MoonBit type: CanvasFontStretch
// Specifications: html.idl

///|
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
} derive(Eq)

///|
pub impl Show for CanvasFontStretch with output(
  self : CanvasFontStretch,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasFontStretch::UltraCondensed => logger.write_string("UltraCondensed")
    CanvasFontStretch::ExtraCondensed => logger.write_string("ExtraCondensed")
    CanvasFontStretch::Condensed => logger.write_string("Condensed")
    CanvasFontStretch::SemiCondensed => logger.write_string("SemiCondensed")
    CanvasFontStretch::Normal => logger.write_string("Normal")
    CanvasFontStretch::SemiExpanded => logger.write_string("SemiExpanded")
    CanvasFontStretch::Expanded => logger.write_string("Expanded")
    CanvasFontStretch::ExtraExpanded => logger.write_string("ExtraExpanded")
    CanvasFontStretch::UltraExpanded => logger.write_string("UltraExpanded")
  }
}

///|
pub impl TJsValue for CanvasFontStretch with to_js(self : CanvasFontStretch) -> JsValue {
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

///|
pub fn CanvasFontStretch::from(value : String) -> CanvasFontStretch? {
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

///|
fn CanvasFontStretch::from_unchecked(value : String) -> CanvasFontStretch {
  match value {
    "ultra-condensed" => CanvasFontStretch::UltraCondensed
    "extra-condensed" => CanvasFontStretch::ExtraCondensed
    "condensed" => CanvasFontStretch::Condensed
    "semi-condensed" => CanvasFontStretch::SemiCondensed
    "normal" => CanvasFontStretch::Normal
    "semi-expanded" => CanvasFontStretch::SemiExpanded
    "expanded" => CanvasFontStretch::Expanded
    "extra-expanded" => CanvasFontStretch::ExtraExpanded
    "ultra-expanded" => CanvasFontStretch::UltraExpanded
    _ => CanvasFontStretch::UltraCondensed
  }
}

///|
pub fn CanvasFontStretch::value(self : CanvasFontStretch) -> String {
  match self {
    CanvasFontStretch::UltraCondensed => "ultra-condensed"
    CanvasFontStretch::ExtraCondensed => "extra-condensed"
    CanvasFontStretch::Condensed => "condensed"
    CanvasFontStretch::SemiCondensed => "semi-condensed"
    CanvasFontStretch::Normal => "normal"
    CanvasFontStretch::SemiExpanded => "semi-expanded"
    CanvasFontStretch::Expanded => "expanded"
    CanvasFontStretch::ExtraExpanded => "extra-expanded"
    CanvasFontStretch::UltraExpanded => "ultra-expanded"
  }
}

///|
pub impl FromJsAny for CanvasFontStretch with from_js_any(value : JsAny) -> CanvasFontStretch {
  CanvasFontStretch::from_unchecked(value)
}
