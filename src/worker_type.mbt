// Auto-generated MoonBit bindings for WorkerType

// Do not edit manually

///|
pub enum WorkerType {
  Classic
  Module
} derive(Eq)

///|
pub impl TJsValue for WorkerType with to_js(self) {
  match self {
    WorkerType::Classic => TJsValue::to_js("classic")
    WorkerType::Module => TJsValue::to_js("module")
  }
}

///|
pub fn WorkerType::from_js(value : JsValue) -> WorkerType? {
  let str : String = value.unsafe_cast()
  match str {
    "classic" => Some(WorkerType::Classic)
    "module" => Some(WorkerType::Module)
    _ => None
  }
}

///|
pub impl Show for WorkerType with output(self, logger) {
  match self {
    WorkerType::Classic => logger.write_string("classic")
    WorkerType::Module => logger.write_string("module")
  }
}
