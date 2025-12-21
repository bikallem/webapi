///|
pub(all) enum CanvasFontVariantCaps {
  Normal
  SmallCaps
  AllSmallCaps
  PetiteCaps
  AllPetiteCaps
  Unicase
  TitlingCaps
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasFontVariantCaps with to_js(
  self : CanvasFontVariantCaps,
) -> JsValue {
  match self {
    CanvasFontVariantCaps::Normal => TJsValue::to_js("normal")
    CanvasFontVariantCaps::SmallCaps => TJsValue::to_js("small-caps")
    CanvasFontVariantCaps::AllSmallCaps => TJsValue::to_js("all-small-caps")
    CanvasFontVariantCaps::PetiteCaps => TJsValue::to_js("petite-caps")
    CanvasFontVariantCaps::AllPetiteCaps => TJsValue::to_js("all-petite-caps")
    CanvasFontVariantCaps::Unicase => TJsValue::to_js("unicase")
    CanvasFontVariantCaps::TitlingCaps => TJsValue::to_js("titling-caps")
  }
}

///|
pub fn CanvasFontVariantCaps::from(value : String) -> CanvasFontVariantCaps? {
  match value {
    "normal" => Some(CanvasFontVariantCaps::Normal)
    "small-caps" => Some(CanvasFontVariantCaps::SmallCaps)
    "all-small-caps" => Some(CanvasFontVariantCaps::AllSmallCaps)
    "petite-caps" => Some(CanvasFontVariantCaps::PetiteCaps)
    "all-petite-caps" => Some(CanvasFontVariantCaps::AllPetiteCaps)
    "unicase" => Some(CanvasFontVariantCaps::Unicase)
    "titling-caps" => Some(CanvasFontVariantCaps::TitlingCaps)
    _ => None
  }
}
