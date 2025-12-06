// Auto-generated MoonBit bindings for CanvasFontVariantCaps

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
} derive(Eq)

///|
pub impl TJsValue for CanvasFontVariantCaps with to_js(self) {
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

///|
pub impl Show for CanvasFontVariantCaps with output(self, logger) {
  match self {
    CanvasFontVariantCaps::Normal => logger.write_string("normal")
    CanvasFontVariantCaps::SmallCaps => logger.write_string("small-caps")
    CanvasFontVariantCaps::AllSmallCaps => logger.write_string("all-small-caps")
    CanvasFontVariantCaps::PetiteCaps => logger.write_string("petite-caps")
    CanvasFontVariantCaps::AllPetiteCaps =>
      logger.write_string("all-petite-caps")
    CanvasFontVariantCaps::Unicase => logger.write_string("unicase")
    CanvasFontVariantCaps::TitlingCaps => logger.write_string("titling-caps")
  }
}
