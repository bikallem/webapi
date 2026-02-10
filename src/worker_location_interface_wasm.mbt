fn worker_location_href_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_href"

///|
fn worker_location_href_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_href_ffi_wasm(obj))
}

fn worker_location_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_origin"

///|
fn worker_location_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_origin_ffi_wasm(obj))
}

fn worker_location_protocol_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_protocol"

///|
fn worker_location_protocol_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_protocol_ffi_wasm(obj))
}

fn worker_location_host_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_host"

///|
fn worker_location_host_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_host_ffi_wasm(obj))
}

fn worker_location_hostname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_hostname"

///|
fn worker_location_hostname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_hostname_ffi_wasm(obj))
}

fn worker_location_port_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_port"

///|
fn worker_location_port_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_port_ffi_wasm(obj))
}

fn worker_location_pathname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_pathname"

///|
fn worker_location_pathname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_pathname_ffi_wasm(obj))
}

fn worker_location_search_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_search"

///|
fn worker_location_search_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_search_ffi_wasm(obj))
}

fn worker_location_hash_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WorkerLocation" "get_hash"

///|
fn worker_location_hash_ffi(obj: JsValue) -> String {
  jsvalue_to_string(worker_location_hash_ffi_wasm(obj))
}