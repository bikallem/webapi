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
    _ => abort("unknown enum value")
  }
}

///|
pub fn CanvasFontStretch::value(self : CanvasFontStretch) -> String {
  let buf = StringBuilder::new()
  match self {
    CanvasFontStretch::UltraCondensed => buf.write_string("ultra-condensed")
    CanvasFontStretch::ExtraCondensed => buf.write_string("extra-condensed")
    CanvasFontStretch::Condensed => buf.write_string("condensed")
    CanvasFontStretch::SemiCondensed => buf.write_string("semi-condensed")
    CanvasFontStretch::Normal => buf.write_string("normal")
    CanvasFontStretch::SemiExpanded => buf.write_string("semi-expanded")
    CanvasFontStretch::Expanded => buf.write_string("expanded")
    CanvasFontStretch::ExtraExpanded => buf.write_string("extra-expanded")
    CanvasFontStretch::UltraExpanded => buf.write_string("ultra-expanded")
  }
  buf.to_string()
}
