// Do not edit. This file is generated.
// MoonBit type: PredefinedColorSpace
// Specifications: html.idl

pub(all) enum PredefinedColorSpace {
  Srgb
  SrgbLinear
  DisplayP3
  DisplayP3Linear
} derive(Eq)

pub impl Show for PredefinedColorSpace with output(self : PredefinedColorSpace, logger : &Logger) -> Unit {
  match self {
    PredefinedColorSpace::Srgb => logger.write_string("Srgb")
    PredefinedColorSpace::SrgbLinear => logger.write_string("SrgbLinear")
    PredefinedColorSpace::DisplayP3 => logger.write_string("DisplayP3")
    PredefinedColorSpace::DisplayP3Linear => logger.write_string("DisplayP3Linear")
  }
}

pub impl TJsValue for PredefinedColorSpace with to_js(self: PredefinedColorSpace) -> JsValue {
  match self {
    PredefinedColorSpace::Srgb => TJsValue::to_js("srgb")
    PredefinedColorSpace::SrgbLinear => TJsValue::to_js("srgb-linear")
    PredefinedColorSpace::DisplayP3 => TJsValue::to_js("display-p3")
    PredefinedColorSpace::DisplayP3Linear => TJsValue::to_js("display-p3-linear")
  }
}

pub fn PredefinedColorSpace::from(value: String) -> PredefinedColorSpace? {
  match value {
    "srgb" => Some(PredefinedColorSpace::Srgb)
    "srgb-linear" => Some(PredefinedColorSpace::SrgbLinear)
    "display-p3" => Some(PredefinedColorSpace::DisplayP3)
    "display-p3-linear" => Some(PredefinedColorSpace::DisplayP3Linear)
    _ => None
  }
}

fn PredefinedColorSpace::from_unchecked(value: String) -> PredefinedColorSpace {
  match value {
    "srgb" => PredefinedColorSpace::Srgb
    "srgb-linear" => PredefinedColorSpace::SrgbLinear
    "display-p3" => PredefinedColorSpace::DisplayP3
    "display-p3-linear" => PredefinedColorSpace::DisplayP3Linear
    _ => abort("unknown PredefinedColorSpace enum value")
  }
}

pub fn PredefinedColorSpace::value(self: PredefinedColorSpace) -> String {
  match self {
    PredefinedColorSpace::Srgb => "srgb"
    PredefinedColorSpace::SrgbLinear => "srgb-linear"
    PredefinedColorSpace::DisplayP3 => "display-p3"
    PredefinedColorSpace::DisplayP3Linear => "display-p3-linear"
  }
}

pub impl FromJsAny for PredefinedColorSpace with from_js_any(value : JsAny) -> PredefinedColorSpace {
  PredefinedColorSpace::from_unchecked(value)
}