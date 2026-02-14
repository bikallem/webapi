// Do not edit. This file is generated.
// MoonBit type: WorkerType
// Specifications: html.idl

///|
pub(all) enum WorkerType {
  Classic
  Module
} derive(Eq)

///|
pub impl Show for WorkerType with output(self : WorkerType, logger : &Logger) -> Unit {
  match self {
    WorkerType::Classic => logger.write_string("Classic")
    WorkerType::Module => logger.write_string("Module")
  }
}

///|
pub impl TJsValue for WorkerType with to_js(self : WorkerType) -> JsValue {
  match self {
    WorkerType::Classic => TJsValue::to_js("classic")
    WorkerType::Module => TJsValue::to_js("module")
  }
}

///|
pub fn WorkerType::from(value : String) -> WorkerType? {
  match value {
    "classic" => Some(WorkerType::Classic)
    "module" => Some(WorkerType::Module)
    _ => None
  }
}

///|
fn WorkerType::from_unchecked(value : String) -> WorkerType {
  match value {
    "classic" => WorkerType::Classic
    "module" => WorkerType::Module
    _ => abort("unknown WorkerType enum value")
  }
}

///|
pub fn WorkerType::value(self : WorkerType) -> String {
  let buf = StringBuilder::new()
  match self {
    WorkerType::Classic => buf.write_string("classic")
    WorkerType::Module => buf.write_string("module")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for WorkerType with from_js_any(value : JsAny) -> WorkerType {
  WorkerType::from_unchecked(value)
}
