// Auto-generated MoonBit bindings for CanvasFontStretch enum
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
} derive(Eq,Show)

///|
pub fn CanvasFontStretch::from(value: String) -> CanvasFontStretch {
  match value {
    "ultra-condensed" => UltraCondensed
    "extra-condensed" => ExtraCondensed
    "condensed" => Condensed
    "semi-condensed" => SemiCondensed
    "normal" => Normal
    "semi-expanded" => SemiExpanded
    "expanded" => Expanded
    "extra-expanded" => ExtraExpanded
    "ultra-expanded" => UltraExpanded
    _ => UltraCondensed
  }
}

///|
pub fn CanvasFontStretch::to_js(self : CanvasFontStretch) -> String {
  match self {
    UltraCondensed => "ultra-condensed"
    ExtraCondensed => "extra-condensed"
    Condensed => "condensed"
    SemiCondensed => "semi-condensed"
    Normal => "normal"
    SemiExpanded => "semi-expanded"
    Expanded => "expanded"
    ExtraExpanded => "extra-expanded"
    UltraExpanded => "ultra-expanded"
  }
}
