// Auto-generated MoonBit bindings for CanvasFontVariantCaps enum
// Do not edit manually

///|
pub(all) enum CanvasFontVariantCaps {
  Normal
  SmallCaps
  AllSmallCaps
  PetiteCaps
  AllPetiteCaps
  Unicase
  TitlingCaps
} derive(Eq,Show)

///|
pub fn CanvasFontVariantCaps::from(value: String) -> CanvasFontVariantCaps {
  match value {
    "normal" => Normal
    "small-caps" => SmallCaps
    "all-small-caps" => AllSmallCaps
    "petite-caps" => PetiteCaps
    "all-petite-caps" => AllPetiteCaps
    "unicase" => Unicase
    "titling-caps" => TitlingCaps
    _ => Normal
  }
}

///|
pub fn CanvasFontVariantCaps::to_js(self : CanvasFontVariantCaps) -> String {
  match self {
    Normal => "normal"
    SmallCaps => "small-caps"
    AllSmallCaps => "all-small-caps"
    PetiteCaps => "petite-caps"
    AllPetiteCaps => "all-petite-caps"
    Unicase => "unicase"
    TitlingCaps => "titling-caps"
  }
}
