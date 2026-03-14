// Do not edit. This file is generated.
// MoonBit type: WorkerLocation
// Specifications: html.idl

/// [WorkerLocation](https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation)
#external
pub type WorkerLocation

pub impl TJsValue for WorkerLocation with to_js(self: WorkerLocation) -> JsValue = "%identity"

pub impl FromJsAny for WorkerLocation with from_js_any(value : JsAny) -> WorkerLocation = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TWorkerLocation] WorkerLocation::into(self : WorkerLocation) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TWorkerLocation] WorkerLocation::unsafe_into(self : WorkerLocation) -> T = "%identity"

pub impl HasConstructor for WorkerLocation with constructor_name() { "WorkerLocation" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWorkerLocation + HasConstructor] WorkerLocation::try_into(self : WorkerLocation) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn worker_location_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn worker_location_href_ffi(obj: JsValue) -> String {
  worker_location_href_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn worker_location_origin_ffi(obj: JsValue) -> String {
  worker_location_origin_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_protocol_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
fn worker_location_protocol_ffi(obj: JsValue) -> String {
  worker_location_protocol_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_host_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.host"

///|
#cfg(target="js")
fn worker_location_host_ffi(obj: JsValue) -> String {
  worker_location_host_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_hostname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

///|
#cfg(target="js")
fn worker_location_hostname_ffi(obj: JsValue) -> String {
  worker_location_hostname_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_port_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
fn worker_location_port_ffi(obj: JsValue) -> String {
  worker_location_port_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_pathname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

///|
#cfg(target="js")
fn worker_location_pathname_ffi(obj: JsValue) -> String {
  worker_location_pathname_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_search_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.search"

///|
#cfg(target="js")
fn worker_location_search_ffi(obj: JsValue) -> String {
  worker_location_search_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_location_hash_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hash"

///|
#cfg(target="js")
fn worker_location_hash_ffi(obj: JsValue) -> String {
  worker_location_hash_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn worker_location_href_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_href"

///|
#cfg(target="wasm-gc")
fn worker_location_href_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_href_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_origin"

///|
#cfg(target="wasm-gc")
fn worker_location_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_origin_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_protocol_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_protocol"

///|
#cfg(target="wasm-gc")
fn worker_location_protocol_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_protocol_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_host_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_host"

///|
#cfg(target="wasm-gc")
fn worker_location_host_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_host_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_hostname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_hostname"

///|
#cfg(target="wasm-gc")
fn worker_location_hostname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_hostname_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_port_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_port"

///|
#cfg(target="wasm-gc")
fn worker_location_port_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_port_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_pathname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_pathname"

///|
#cfg(target="wasm-gc")
fn worker_location_pathname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_pathname_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_search_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_search"

///|
#cfg(target="wasm-gc")
fn worker_location_search_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_search_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn worker_location_hash_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_hash"

///|
#cfg(target="wasm-gc")
fn worker_location_hash_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_hash_ffi_wasm(obj))
}