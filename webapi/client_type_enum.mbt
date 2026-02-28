// Do not edit. This file is generated.
// MoonBit type: ClientType
// Specifications: service-workers.idl

///|
pub(all) enum ClientType {
  Window
  Worker
  Sharedworker
  All
} derive(Eq)

///|
pub impl Show for ClientType with output(self : ClientType, logger : &Logger) -> Unit {
  match self {
    ClientType::Window => logger.write_string("Window")
    ClientType::Worker => logger.write_string("Worker")
    ClientType::Sharedworker => logger.write_string("Sharedworker")
    ClientType::All => logger.write_string("All")
  }
}

///|
pub impl TJsValue for ClientType with to_js(self : ClientType) -> JsValue {
  match self {
    ClientType::Window => TJsValue::to_js("window")
    ClientType::Worker => TJsValue::to_js("worker")
    ClientType::Sharedworker => TJsValue::to_js("sharedworker")
    ClientType::All => TJsValue::to_js("all")
  }
}

///|
pub fn ClientType::from(value : String) -> ClientType? {
  match value {
    "window" => Some(ClientType::Window)
    "worker" => Some(ClientType::Worker)
    "sharedworker" => Some(ClientType::Sharedworker)
    "all" => Some(ClientType::All)
    _ => None
  }
}

///|
fn ClientType::from_unchecked(value : String) -> ClientType {
  match value {
    "window" => ClientType::Window
    "worker" => ClientType::Worker
    "sharedworker" => ClientType::Sharedworker
    "all" => ClientType::All
    _ => abort("unknown ClientType enum value")
  }
}

///|
pub fn ClientType::value(self : ClientType) -> String {
  match self {
    ClientType::Window => "window"
    ClientType::Worker => "worker"
    ClientType::Sharedworker => "sharedworker"
    ClientType::All => "all"
  }
}

///|
pub impl FromJsAny for ClientType with from_js_any(value : JsAny) -> ClientType {
  ClientType::from_unchecked(value)
}
