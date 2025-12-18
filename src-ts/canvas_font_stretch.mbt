// Auto-generated MoonBit bindings for CanvasFontStretch

// Do not edit manually

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
pub impl TJsValue for CanvasFontStretch with to_js(self) {
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
pub impl Show for CanvasFontStretch with output(self, logger) {
  match self {
    CanvasFontStretch::UltraCondensed => logger.write_string("ultra-condensed")
    CanvasFontStretch::ExtraCondensed => logger.write_string("extra-condensed")
    CanvasFontStretch::Condensed => logger.write_string("condensed")
    CanvasFontStretch::SemiCondensed => logger.write_string("semi-condensed")
    CanvasFontStretch::Normal => logger.write_string("normal")
    CanvasFontStretch::SemiExpanded => logger.write_string("semi-expanded")
    CanvasFontStretch::Expanded => logger.write_string("expanded")
    CanvasFontStretch::ExtraExpanded => logger.write_string("extra-expanded")
    CanvasFontStretch::UltraExpanded => logger.write_string("ultra-expanded")
  }
}
