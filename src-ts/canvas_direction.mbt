// Auto-generated MoonBit bindings for CanvasDirection

// Do not edit manually

///|
pub(all) enum CanvasDirection {
  Ltr
  Rtl
  Inherit
} derive(Eq)

///|
pub impl TJsValue for CanvasDirection with to_js(self) {
  match self {
    CanvasDirection::Ltr => TJsValue::to_js("ltr")
    CanvasDirection::Rtl => TJsValue::to_js("rtl")
    CanvasDirection::Inherit => TJsValue::to_js("inherit")
  }
}

///|
pub fn CanvasDirection::from(value : String) -> CanvasDirection? {
  match value {
    "ltr" => Some(CanvasDirection::Ltr)
    "rtl" => Some(CanvasDirection::Rtl)
    "inherit" => Some(CanvasDirection::Inherit)
    _ => None
  }
}

///|
pub impl Show for CanvasDirection with output(self, logger) {
  match self {
    CanvasDirection::Ltr => logger.write_string("ltr")
    CanvasDirection::Rtl => logger.write_string("rtl")
    CanvasDirection::Inherit => logger.write_string("inherit")
  }
}