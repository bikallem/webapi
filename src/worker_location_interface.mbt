///|
#external
pub type WorkerLocation

///|
pub impl TJsValue for WorkerLocation with to_js(self : WorkerLocation) -> JsValue = "%identity"

///|
pub fn[T : TWorkerLocation] WorkerLocation::into(self : WorkerLocation) -> T = "%identity"

///|
pub impl TWorkerLocation for WorkerLocation

///|
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

///|
extern "js" fn worker_location_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
impl TWorkerLocation with href(self : Self) -> String {
  worker_location_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_origin_ffi(obj : JsValue) -> String = "(obj) => obj.origin"

///|
impl TWorkerLocation with origin(self : Self) -> String {
  worker_location_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_protocol_ffi(obj : JsValue) -> String = "(obj) => obj.protocol"

///|
impl TWorkerLocation with protocol(self : Self) -> String {
  worker_location_protocol_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_host_ffi(obj : JsValue) -> String = "(obj) => obj.host"

///|
impl TWorkerLocation with host(self : Self) -> String {
  worker_location_host_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_hostname_ffi(obj : JsValue) -> String = "(obj) => obj.hostname"

///|
impl TWorkerLocation with hostname(self : Self) -> String {
  worker_location_hostname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_port_ffi(obj : JsValue) -> String = "(obj) => obj.port"

///|
impl TWorkerLocation with port(self : Self) -> String {
  worker_location_port_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_pathname_ffi(obj : JsValue) -> String = "(obj) => obj.pathname"

///|
impl TWorkerLocation with pathname(self : Self) -> String {
  worker_location_pathname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_search_ffi(obj : JsValue) -> String = "(obj) => obj.search"

///|
impl TWorkerLocation with search(self : Self) -> String {
  worker_location_search_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_location_hash_ffi(obj : JsValue) -> String = "(obj) => obj.hash"

///|
impl TWorkerLocation with hash(self : Self) -> String {
  worker_location_hash_ffi(TJsValue::to_js(self))
}
