// Do not edit. This file is generated.
// MoonBit type: FrameType
// Specifications: service-workers.idl

pub(all) enum FrameType {
  Auxiliary
  TopLevel
  Nested
  None
} derive(Eq)

pub impl Show for FrameType with output(self : FrameType, logger : &Logger) -> Unit {
  match self {
    FrameType::Auxiliary => logger.write_string("Auxiliary")
    FrameType::TopLevel => logger.write_string("TopLevel")
    FrameType::Nested => logger.write_string("Nested")
    FrameType::None => logger.write_string("None")
  }
}

pub impl TJsValue for FrameType with to_js(self: FrameType) -> JsValue {
  match self {
    FrameType::Auxiliary => TJsValue::to_js("auxiliary")
    FrameType::TopLevel => TJsValue::to_js("top-level")
    FrameType::Nested => TJsValue::to_js("nested")
    FrameType::None => TJsValue::to_js("none")
  }
}

pub fn FrameType::from(value: String) -> FrameType? {
  match value {
    "auxiliary" => Some(FrameType::Auxiliary)
    "top-level" => Some(FrameType::TopLevel)
    "nested" => Some(FrameType::Nested)
    "none" => Some(FrameType::None)
    _ => None
  }
}

fn FrameType::from_unchecked(value: String) -> FrameType {
  match value {
    "auxiliary" => FrameType::Auxiliary
    "top-level" => FrameType::TopLevel
    "nested" => FrameType::Nested
    "none" => FrameType::None
    _ => abort("unknown FrameType enum value")
  }
}

pub fn FrameType::value(self: FrameType) -> String {
  match self {
    FrameType::Auxiliary => "auxiliary"
    FrameType::TopLevel => "top-level"
    FrameType::Nested => "nested"
    FrameType::None => "none"
  }
}

pub impl FromJsAny for FrameType with from_js_any(value : JsAny) -> FrameType {
  FrameType::from_unchecked(value)
}