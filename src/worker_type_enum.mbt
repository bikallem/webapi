// Do not edit. This file is generated.
// MoonBit type: WorkerType
// Specifications: html.idl

///|
pub(all) enum WorkerType {
  Classic
  Module
} derive(Eq, Show)

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
