// Auto-generated MoonBit bindings for WorkerType enum
// Do not edit manually

///|
pub(all) enum WorkerType {
  Classic
  Module
} derive(Eq,Show)

///|
pub fn WorkerType::from(value: String) -> WorkerType {
  match value {
    "classic" => Classic
    "module" => Module
    _ => Classic
  }
}

///|
pub fn WorkerType::to_js(self : WorkerType) -> String {
  match self {
    Classic => "classic"
    Module => "module"
  }
}
