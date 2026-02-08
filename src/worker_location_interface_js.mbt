///|
extern "js" fn worker_location_href_ffi(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
extern "js" fn worker_location_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
extern "js" fn worker_location_protocol_ffi(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
extern "js" fn worker_location_host_ffi(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
extern "js" fn worker_location_hostname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
extern "js" fn worker_location_port_ffi(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
extern "js" fn worker_location_pathname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
extern "js" fn worker_location_search_ffi(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
extern "js" fn worker_location_hash_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hash"
