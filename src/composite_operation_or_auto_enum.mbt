// Do not edit. This file is generated.
// MoonBit type: CompositeOperationOrAuto
// Specifications: web-animations.idl

pub(all) enum CompositeOperationOrAuto {
  Replace
  Add
  Accumulate
  Auto
} derive(Eq)

pub impl Show for CompositeOperationOrAuto with output(self : CompositeOperationOrAuto, logger : &Logger) -> Unit {
  match self {
    CompositeOperationOrAuto::Replace => logger.write_string("Replace")
    CompositeOperationOrAuto::Add => logger.write_string("Add")
    CompositeOperationOrAuto::Accumulate => logger.write_string("Accumulate")
    CompositeOperationOrAuto::Auto => logger.write_string("Auto")
  }
}

pub impl TJsValue for CompositeOperationOrAuto with to_js(self: CompositeOperationOrAuto) -> JsValue {
  match self {
    CompositeOperationOrAuto::Replace => TJsValue::to_js("replace")
    CompositeOperationOrAuto::Add => TJsValue::to_js("add")
    CompositeOperationOrAuto::Accumulate => TJsValue::to_js("accumulate")
    CompositeOperationOrAuto::Auto => TJsValue::to_js("auto")
  }
}

pub fn CompositeOperationOrAuto::from(value: String) -> CompositeOperationOrAuto? {
  match value {
    "replace" => Some(CompositeOperationOrAuto::Replace)
    "add" => Some(CompositeOperationOrAuto::Add)
    "accumulate" => Some(CompositeOperationOrAuto::Accumulate)
    "auto" => Some(CompositeOperationOrAuto::Auto)
    _ => None
  }
}

fn CompositeOperationOrAuto::from_unchecked(value: String) -> CompositeOperationOrAuto {
  match value {
    "replace" => CompositeOperationOrAuto::Replace
    "add" => CompositeOperationOrAuto::Add
    "accumulate" => CompositeOperationOrAuto::Accumulate
    "auto" => CompositeOperationOrAuto::Auto
    _ => CompositeOperationOrAuto::Replace
  }
}

pub fn CompositeOperationOrAuto::value(self: CompositeOperationOrAuto) -> String {
  match self {
    CompositeOperationOrAuto::Replace => "replace"
    CompositeOperationOrAuto::Add => "add"
    CompositeOperationOrAuto::Accumulate => "accumulate"
    CompositeOperationOrAuto::Auto => "auto"
  }
}

pub impl FromJsAny for CompositeOperationOrAuto with from_js_any(value : JsAny) -> CompositeOperationOrAuto {
  CompositeOperationOrAuto::from_unchecked(value)
}