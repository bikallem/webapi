// Auto-generated MoonBit bindings for ColorSpaceConversion

// Do not edit manually

///|
pub enum ColorSpaceConversion {
  None
  Default
} derive(Eq)

///|
pub impl TJsValue for ColorSpaceConversion with to_js(self) {
  match self {
    ColorSpaceConversion::None => TJsValue::to_js("none")
    ColorSpaceConversion::Default => TJsValue::to_js("default")
  }
}

///|
pub fn ColorSpaceConversion::from_js(value : JsValue) -> ColorSpaceConversion? {
  let str : String = value.unsafe_cast()
  match str {
    "none" => Some(ColorSpaceConversion::None)
    "default" => Some(ColorSpaceConversion::Default)
    _ => None
  }
}

///|
pub impl Show for ColorSpaceConversion with output(self, logger) {
  match self {
    ColorSpaceConversion::None => logger.write_string("none")
    ColorSpaceConversion::Default => logger.write_string("default")
  }
}
