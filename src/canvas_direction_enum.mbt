// Do not edit. This file is generated.
// MoonBit type: CanvasDirection
// Specifications: html.idl

///|
pub(all) enum CanvasDirection {
  Ltr
  Rtl
  Inherit
} derive(Eq)

///|
pub impl Show for CanvasDirection with output(
  self : CanvasDirection,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasDirection::Ltr => logger.write_string("Ltr")
    CanvasDirection::Rtl => logger.write_string("Rtl")
    CanvasDirection::Inherit => logger.write_string("Inherit")
  }
}

///|
pub impl TJsValue for CanvasDirection with to_js(self : CanvasDirection) -> JsValue {
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
fn CanvasDirection::from_unchecked(value : String) -> CanvasDirection {
  match value {
    "ltr" => CanvasDirection::Ltr
    "rtl" => CanvasDirection::Rtl
    "inherit" => CanvasDirection::Inherit
    _ => abort("unknown CanvasDirection enum value")
  }
}

///|
pub fn CanvasDirection::value(self : CanvasDirection) -> String {
  let buf = StringBuilder::new()
  match self {
    CanvasDirection::Ltr => buf.write_string("ltr")
    CanvasDirection::Rtl => buf.write_string("rtl")
    CanvasDirection::Inherit => buf.write_string("inherit")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for CanvasDirection with from_js_any(value : JsAny) -> CanvasDirection {
  CanvasDirection::from_unchecked(value)
}
