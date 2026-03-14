// Do not edit. This file is generated.
// MoonBit type: ServiceWorkerUpdateViaCache
// Specifications: service-workers.idl

///|
pub(all) enum ServiceWorkerUpdateViaCache {
  Imports
  All
  None
} derive(Eq)

///|
pub impl Show for ServiceWorkerUpdateViaCache with output(
  self : ServiceWorkerUpdateViaCache,
  logger : &Logger,
) -> Unit {
  match self {
    ServiceWorkerUpdateViaCache::Imports => logger.write_string("Imports")
    ServiceWorkerUpdateViaCache::All => logger.write_string("All")
    ServiceWorkerUpdateViaCache::None => logger.write_string("None")
  }
}

///|
pub impl TJsValue for ServiceWorkerUpdateViaCache with to_js(
  self : ServiceWorkerUpdateViaCache,
) -> JsValue {
  match self {
    ServiceWorkerUpdateViaCache::Imports => TJsValue::to_js("imports")
    ServiceWorkerUpdateViaCache::All => TJsValue::to_js("all")
    ServiceWorkerUpdateViaCache::None => TJsValue::to_js("none")
  }
}

///|
pub fn ServiceWorkerUpdateViaCache::from(
  value : String,
) -> ServiceWorkerUpdateViaCache? {
  match value {
    "imports" => Some(ServiceWorkerUpdateViaCache::Imports)
    "all" => Some(ServiceWorkerUpdateViaCache::All)
    "none" => Some(ServiceWorkerUpdateViaCache::None)
    _ => None
  }
}

///|
fn ServiceWorkerUpdateViaCache::from_unchecked(
  value : String,
) -> ServiceWorkerUpdateViaCache {
  match value {
    "imports" => ServiceWorkerUpdateViaCache::Imports
    "all" => ServiceWorkerUpdateViaCache::All
    "none" => ServiceWorkerUpdateViaCache::None
    _ => ServiceWorkerUpdateViaCache::Imports
  }
}

///|
pub fn ServiceWorkerUpdateViaCache::value(
  self : ServiceWorkerUpdateViaCache,
) -> String {
  match self {
    ServiceWorkerUpdateViaCache::Imports => "imports"
    ServiceWorkerUpdateViaCache::All => "all"
    ServiceWorkerUpdateViaCache::None => "none"
  }
}

///|
pub impl FromJsAny for ServiceWorkerUpdateViaCache with from_js_any(
  value : JsAny,
) -> ServiceWorkerUpdateViaCache {
  ServiceWorkerUpdateViaCache::from_unchecked(value)
}
