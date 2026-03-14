// Do not edit. This file is generated.
// MoonBit type: CanvasFontVariantCaps
// Specifications: html.idl

pub(all) enum CanvasFontVariantCaps {
  Normal
  SmallCaps
  AllSmallCaps
  PetiteCaps
  AllPetiteCaps
  Unicase
  TitlingCaps
} derive(Eq)

pub impl Show for CanvasFontVariantCaps with output(self : CanvasFontVariantCaps, logger : &Logger) -> Unit {
  match self {
    CanvasFontVariantCaps::Normal => logger.write_string("Normal")
    CanvasFontVariantCaps::SmallCaps => logger.write_string("SmallCaps")
    CanvasFontVariantCaps::AllSmallCaps => logger.write_string("AllSmallCaps")
    CanvasFontVariantCaps::PetiteCaps => logger.write_string("PetiteCaps")
    CanvasFontVariantCaps::AllPetiteCaps => logger.write_string("AllPetiteCaps")
    CanvasFontVariantCaps::Unicase => logger.write_string("Unicase")
    CanvasFontVariantCaps::TitlingCaps => logger.write_string("TitlingCaps")
  }
}

pub impl TJsValue for CanvasFontVariantCaps with to_js(self: CanvasFontVariantCaps) -> JsValue {
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

pub fn CanvasFontVariantCaps::from(value: String) -> CanvasFontVariantCaps? {
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

fn CanvasFontVariantCaps::from_unchecked(value: String) -> CanvasFontVariantCaps {
  match value {
    "normal" => CanvasFontVariantCaps::Normal
    "small-caps" => CanvasFontVariantCaps::SmallCaps
    "all-small-caps" => CanvasFontVariantCaps::AllSmallCaps
    "petite-caps" => CanvasFontVariantCaps::PetiteCaps
    "all-petite-caps" => CanvasFontVariantCaps::AllPetiteCaps
    "unicase" => CanvasFontVariantCaps::Unicase
    "titling-caps" => CanvasFontVariantCaps::TitlingCaps
    _ => CanvasFontVariantCaps::Normal
  }
}

pub fn CanvasFontVariantCaps::value(self: CanvasFontVariantCaps) -> String {
  match self {
    CanvasFontVariantCaps::Normal => "normal"
    CanvasFontVariantCaps::SmallCaps => "small-caps"
    CanvasFontVariantCaps::AllSmallCaps => "all-small-caps"
    CanvasFontVariantCaps::PetiteCaps => "petite-caps"
    CanvasFontVariantCaps::AllPetiteCaps => "all-petite-caps"
    CanvasFontVariantCaps::Unicase => "unicase"
    CanvasFontVariantCaps::TitlingCaps => "titling-caps"
  }
}

pub impl FromJsAny for CanvasFontVariantCaps with from_js_any(value : JsAny) -> CanvasFontVariantCaps {
  CanvasFontVariantCaps::from_unchecked(value)
}