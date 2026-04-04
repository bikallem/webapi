// Do not edit. This file is generated.
// MoonBit type: ColorSpaceConversion
// Specifications: html.idl

///|
pub(all) enum ColorSpaceConversion {
  None
  Default
} derive(Eq)

///|
pub impl Show for ColorSpaceConversion with output(
  self : ColorSpaceConversion,
  logger : &Logger,
) -> Unit {
  match self {
    ColorSpaceConversion::None => logger.write_string("None")
    ColorSpaceConversion::Default => logger.write_string("Default")
  }
}

///|
pub impl TJsValue for ColorSpaceConversion with to_js(
  self : ColorSpaceConversion,
) -> JsValue {
  match self {
    ColorSpaceConversion::None => TJsValue::to_js("none")
    ColorSpaceConversion::Default => TJsValue::to_js("default")
  }
}

///|
pub fn ColorSpaceConversion::from(value : String) -> ColorSpaceConversion? {
  match value {
    "none" => Some(ColorSpaceConversion::None)
    "default" => Some(ColorSpaceConversion::Default)
    _ => None
  }
}

///|
fn ColorSpaceConversion::from_unchecked(value : String) -> ColorSpaceConversion {
  match value {
    "none" => ColorSpaceConversion::None
    "default" => ColorSpaceConversion::Default
    _ => ColorSpaceConversion::None
  }
}

///|
pub fn ColorSpaceConversion::value(self : ColorSpaceConversion) -> String {
  match self {
    ColorSpaceConversion::None => "none"
    ColorSpaceConversion::Default => "default"
  }
}

///|
pub impl FromJsAny for ColorSpaceConversion with from_js_any(value : JsAny) -> ColorSpaceConversion {
  ColorSpaceConversion::from_unchecked(value)
}
