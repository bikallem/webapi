///|
extern "js" fn url_new_ffi(url : JsValue, base : JsValue) -> URL = "(url, base) => new URL(url, base)"

///|
extern "js" fn url_parse_ffi(url : JsValue, base : JsValue) -> JsValue = "(url, base) => URL.parse(url, base)"

///|
extern "js" fn url_can_parse_ffi(url : JsValue, base : JsValue) -> JsValue = "(url, base) => URL.canParse(url, base)"

///|
extern "js" fn url_href_ffi(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
extern "js" fn url_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

///|
extern "js" fn url_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
extern "js" fn url_protocol_ffi(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
extern "js" fn url_set_protocol_ffi(obj : JsValue, protocol : JsValue) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
extern "js" fn url_username_ffi(obj : JsValue) -> JsValue = "(obj) => obj.username"

///|
extern "js" fn url_set_username_ffi(obj : JsValue, username : JsValue) -> Unit = "(obj, username) => { obj.username = username; }"

///|
extern "js" fn url_password_ffi(obj : JsValue) -> JsValue = "(obj) => obj.password"

///|
extern "js" fn url_set_password_ffi(obj : JsValue, password : JsValue) -> Unit = "(obj, password) => { obj.password = password; }"

///|
extern "js" fn url_host_ffi(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
extern "js" fn url_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
extern "js" fn url_hostname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
extern "js" fn url_set_hostname_ffi(obj : JsValue, hostname : JsValue) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
extern "js" fn url_port_ffi(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
extern "js" fn url_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
extern "js" fn url_pathname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
extern "js" fn url_set_pathname_ffi(obj : JsValue, pathname : JsValue) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
extern "js" fn url_search_ffi(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
extern "js" fn url_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

///|
extern "js" fn url_search_params_ffi(obj : JsValue) -> JsValue = "(obj) => obj.searchParams"

///|
extern "js" fn url_hash_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
extern "js" fn url_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
extern "js" fn url_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
extern "js" fn url_create_object_url_ffi(obj : JsValue) -> JsValue = "(obj) => URL.createObjectURL(obj)"

///|
extern "js" fn url_revoke_object_url_ffi(url : JsValue) -> Unit = "(url) => URL.revokeObjectURL(url)"
