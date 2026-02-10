extern "js" fn worker_location_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
fn worker_location_href_ffi(obj: JsValue) -> String {
  worker_location_href_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.origin"

///|
fn worker_location_origin_ffi(obj: JsValue) -> String {
  worker_location_origin_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_protocol_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

///|
fn worker_location_protocol_ffi(obj: JsValue) -> String {
  worker_location_protocol_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_host_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.host"

///|
fn worker_location_host_ffi(obj: JsValue) -> String {
  worker_location_host_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_hostname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

///|
fn worker_location_hostname_ffi(obj: JsValue) -> String {
  worker_location_hostname_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_port_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port"

///|
fn worker_location_port_ffi(obj: JsValue) -> String {
  worker_location_port_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_pathname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

///|
fn worker_location_pathname_ffi(obj: JsValue) -> String {
  worker_location_pathname_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_search_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.search"

///|
fn worker_location_search_ffi(obj: JsValue) -> String {
  worker_location_search_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_location_hash_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hash"

///|
fn worker_location_hash_ffi(obj: JsValue) -> String {
  worker_location_hash_ffi_js(obj).unsafe_cast()
}