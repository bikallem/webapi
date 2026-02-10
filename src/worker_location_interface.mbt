// Do not edit. This file is generated.
// MoonBit type: WorkerLocation
// Specifications: html.idl

/// [WorkerLocation](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation)
#external
pub type WorkerLocation

pub impl TJsValue for WorkerLocation with to_js(self: WorkerLocation) -> JsValue = "%identity"

pub fn[T: TWorkerLocation] WorkerLocation::into(self : WorkerLocation) -> T = "%identity"

pub impl TWorkerLocation for WorkerLocation

/// [WorkerLocation](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation) interface.
pub trait TWorkerLocation: TJsValue {
  href(self : Self) -> String = _
  origin(self : Self) -> String = _
  protocol(self : Self) -> String = _
  host(self : Self) -> String = _
  hostname(self : Self) -> String = _
  port(self : Self) -> String = _
  pathname(self : Self) -> String = _
  search(self : Self) -> String = _
  hash(self : Self) -> String = _
}

/// [WorkerLocation.href](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/href)
impl TWorkerLocation with href(self : Self) -> String {
  worker_location_href_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.origin](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/origin)
impl TWorkerLocation with origin(self : Self) -> String {
  worker_location_origin_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.protocol](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/protocol)
impl TWorkerLocation with protocol(self : Self) -> String {
  worker_location_protocol_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.host](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/host)
impl TWorkerLocation with host(self : Self) -> String {
  worker_location_host_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.hostname](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/hostname)
impl TWorkerLocation with hostname(self : Self) -> String {
  worker_location_hostname_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.port](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/port)
impl TWorkerLocation with port(self : Self) -> String {
  worker_location_port_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.pathname](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/pathname)
impl TWorkerLocation with pathname(self : Self) -> String {
  worker_location_pathname_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.search](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/search)
impl TWorkerLocation with search(self : Self) -> String {
  worker_location_search_ffi(TJsValue::to_js(self))
}

/// [WorkerLocation.hash](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation/hash)
impl TWorkerLocation with hash(self : Self) -> String {
  worker_location_hash_ffi(TJsValue::to_js(self))
}