///|
extern "js" fn location_href_ffi(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
extern "js" fn location_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

///|
extern "js" fn location_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
extern "js" fn location_protocol_ffi(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
extern "js" fn location_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
extern "js" fn location_host_ffi(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
extern "js" fn location_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
extern "js" fn location_hostname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
extern "js" fn location_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
extern "js" fn location_port_ffi(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
extern "js" fn location_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
extern "js" fn location_pathname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
extern "js" fn location_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
extern "js" fn location_search_ffi(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
extern "js" fn location_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

///|
extern "js" fn location_hash_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
extern "js" fn location_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
extern "js" fn location_assign_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.assign(url)"

///|
extern "js" fn location_replace_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.replace(url)"

///|
extern "js" fn location_reload_ffi(obj : JsValue) -> Unit = "(obj) => obj.reload()"

///|
extern "js" fn location_ancestor_origins_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ancestorOrigins"
