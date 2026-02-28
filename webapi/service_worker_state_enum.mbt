// Do not edit. This file is generated.
// MoonBit type: ServiceWorkerState
// Specifications: service-workers.idl

///|
pub(all) enum ServiceWorkerState {
  Parsed
  Installing
  Installed
  Activating
  Activated
  Redundant
} derive(Eq)

///|
pub impl Show for ServiceWorkerState with output(
  self : ServiceWorkerState,
  logger : &Logger,
) -> Unit {
  match self {
    ServiceWorkerState::Parsed => logger.write_string("Parsed")
    ServiceWorkerState::Installing => logger.write_string("Installing")
    ServiceWorkerState::Installed => logger.write_string("Installed")
    ServiceWorkerState::Activating => logger.write_string("Activating")
    ServiceWorkerState::Activated => logger.write_string("Activated")
    ServiceWorkerState::Redundant => logger.write_string("Redundant")
  }
}

///|
pub impl TJsValue for ServiceWorkerState with to_js(self : ServiceWorkerState) -> JsValue {
  match self {
    ServiceWorkerState::Parsed => TJsValue::to_js("parsed")
    ServiceWorkerState::Installing => TJsValue::to_js("installing")
    ServiceWorkerState::Installed => TJsValue::to_js("installed")
    ServiceWorkerState::Activating => TJsValue::to_js("activating")
    ServiceWorkerState::Activated => TJsValue::to_js("activated")
    ServiceWorkerState::Redundant => TJsValue::to_js("redundant")
  }
}

///|
pub fn ServiceWorkerState::from(value : String) -> ServiceWorkerState? {
  match value {
    "parsed" => Some(ServiceWorkerState::Parsed)
    "installing" => Some(ServiceWorkerState::Installing)
    "installed" => Some(ServiceWorkerState::Installed)
    "activating" => Some(ServiceWorkerState::Activating)
    "activated" => Some(ServiceWorkerState::Activated)
    "redundant" => Some(ServiceWorkerState::Redundant)
    _ => None
  }
}

///|
fn ServiceWorkerState::from_unchecked(value : String) -> ServiceWorkerState {
  match value {
    "parsed" => ServiceWorkerState::Parsed
    "installing" => ServiceWorkerState::Installing
    "installed" => ServiceWorkerState::Installed
    "activating" => ServiceWorkerState::Activating
    "activated" => ServiceWorkerState::Activated
    "redundant" => ServiceWorkerState::Redundant
    _ => abort("unknown ServiceWorkerState enum value")
  }
}

///|
pub fn ServiceWorkerState::value(self : ServiceWorkerState) -> String {
  match self {
    ServiceWorkerState::Parsed => "parsed"
    ServiceWorkerState::Installing => "installing"
    ServiceWorkerState::Installed => "installed"
    ServiceWorkerState::Activating => "activating"
    ServiceWorkerState::Activated => "activated"
    ServiceWorkerState::Redundant => "redundant"
  }
}

///|
pub impl FromJsAny for ServiceWorkerState with from_js_any(value : JsAny) -> ServiceWorkerState {
  ServiceWorkerState::from_unchecked(value)
}
