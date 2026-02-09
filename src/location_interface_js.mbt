///|
extern "js" fn location_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
fn location_href_ffi(obj : JsValue) -> String {
  location_href_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

///|
extern "js" fn location_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
fn location_origin_ffi(obj : JsValue) -> String {
  location_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_protocol_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
fn location_protocol_ffi(obj : JsValue) -> String {
  location_protocol_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
extern "js" fn location_host_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
fn location_host_ffi(obj : JsValue) -> String {
  location_host_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
extern "js" fn location_hostname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
fn location_hostname_ffi(obj : JsValue) -> String {
  location_hostname_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
extern "js" fn location_port_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
fn location_port_ffi(obj : JsValue) -> String {
  location_port_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
extern "js" fn location_pathname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
fn location_pathname_ffi(obj : JsValue) -> String {
  location_pathname_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
extern "js" fn location_search_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
fn location_search_ffi(obj : JsValue) -> String {
  location_search_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

///|
extern "js" fn location_hash_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
fn location_hash_ffi(obj : JsValue) -> String {
  location_hash_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn location_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
extern "js" fn location_assign_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.assign(url)"

///|
extern "js" fn location_replace_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.replace(url)"

///|
extern "js" fn location_reload_ffi(obj : JsValue) -> Unit = "(obj) => obj.reload()"

///|
extern "js" fn location_ancestor_origins_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ancestorOrigins"

///|
fn location_ancestor_origins_ffi(obj : JsValue) -> DOMStringList {
  location_ancestor_origins_ffi_js(obj).unsafe_cast()
}
