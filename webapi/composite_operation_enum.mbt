// Do not edit. This file is generated.
// MoonBit type: CompositeOperation
// Specifications: web-animations.idl

///|
pub(all) enum CompositeOperation {
  Replace
  Add
  Accumulate
} derive(Eq)

///|
pub impl Show for CompositeOperation with output(
  self : CompositeOperation,
  logger : &Logger,
) -> Unit {
  match self {
    CompositeOperation::Replace => logger.write_string("Replace")
    CompositeOperation::Add => logger.write_string("Add")
    CompositeOperation::Accumulate => logger.write_string("Accumulate")
  }
}

///|
pub impl TJsValue for CompositeOperation with to_js(self : CompositeOperation) -> JsValue {
  match self {
    CompositeOperation::Replace => TJsValue::to_js("replace")
    CompositeOperation::Add => TJsValue::to_js("add")
    CompositeOperation::Accumulate => TJsValue::to_js("accumulate")
  }
}

///|
pub fn CompositeOperation::from(value : String) -> CompositeOperation? {
  match value {
    "replace" => Some(CompositeOperation::Replace)
    "add" => Some(CompositeOperation::Add)
    "accumulate" => Some(CompositeOperation::Accumulate)
    _ => None
  }
}

///|
fn CompositeOperation::from_unchecked(value : String) -> CompositeOperation {
  match value {
    "replace" => CompositeOperation::Replace
    "add" => CompositeOperation::Add
    "accumulate" => CompositeOperation::Accumulate
    _ => abort("unknown CompositeOperation enum value")
  }
}

///|
pub fn CompositeOperation::value(self : CompositeOperation) -> String {
  match self {
    CompositeOperation::Replace => "replace"
    CompositeOperation::Add => "add"
    CompositeOperation::Accumulate => "accumulate"
  }
}

///|
pub impl FromJsAny for CompositeOperation with from_js_any(value : JsAny) -> CompositeOperation {
  CompositeOperation::from_unchecked(value)
}
