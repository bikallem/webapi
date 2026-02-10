fn location_href_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_href"

///|
fn location_href_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_href_ffi_wasm(obj))
}

fn location_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "webapi_Location" "set_href"

fn location_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_origin"

///|
fn location_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_origin_ffi_wasm(obj))
}

fn location_protocol_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_protocol"

///|
fn location_protocol_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_protocol_ffi_wasm(obj))
}

fn location_set_protocol_ffi(obj: JsValue, protocol: JsValue) -> Unit = "webapi_Location" "set_protocol"

fn location_host_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_host"

///|
fn location_host_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_host_ffi_wasm(obj))
}

fn location_set_host_ffi(obj: JsValue, host: JsValue) -> Unit = "webapi_Location" "set_host"

fn location_hostname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_hostname"

///|
fn location_hostname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_hostname_ffi_wasm(obj))
}

fn location_set_hostname_ffi(obj: JsValue, hostname: JsValue) -> Unit = "webapi_Location" "set_hostname"

fn location_port_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_port"

///|
fn location_port_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_port_ffi_wasm(obj))
}

fn location_set_port_ffi(obj: JsValue, port: JsValue) -> Unit = "webapi_Location" "set_port"

fn location_pathname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_pathname"

///|
fn location_pathname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_pathname_ffi_wasm(obj))
}

fn location_set_pathname_ffi(obj: JsValue, pathname: JsValue) -> Unit = "webapi_Location" "set_pathname"

fn location_search_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_search"

///|
fn location_search_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_search_ffi_wasm(obj))
}

fn location_set_search_ffi(obj: JsValue, search: JsValue) -> Unit = "webapi_Location" "set_search"

fn location_hash_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Location" "get_hash"

///|
fn location_hash_ffi(obj: JsValue) -> String {
  jsvalue_to_string(location_hash_ffi_wasm(obj))
}

fn location_set_hash_ffi(obj: JsValue, hash: JsValue) -> Unit = "webapi_Location" "set_hash"

fn location_assign_ffi(obj: JsValue, url: JsValue) -> Unit = "webapi_Location" "assign"

fn location_replace_ffi(obj: JsValue, url: JsValue) -> Unit = "webapi_Location" "replace"

fn location_reload_ffi(obj: JsValue) -> Unit = "webapi_Location" "reload"

fn location_ancestor_origins_ffi(obj: JsValue) -> DOMStringList = "webapi_Location" "get_ancestorOrigins"