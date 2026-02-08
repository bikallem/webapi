///|
extern "js" fn svga_element_target_ffi(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
extern "js" fn svga_element_download_ffi(obj : JsValue) -> JsValue = "(obj) => obj.download"

///|
extern "js" fn svga_element_set_download_ffi(
  obj : JsValue,
  download : JsValue,
) -> Unit = "(obj, download) => { obj.download = download; }"

///|
extern "js" fn svga_element_ping_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ping"

///|
extern "js" fn svga_element_set_ping_ffi(obj : JsValue, ping : JsValue) -> Unit = "(obj, ping) => { obj.ping = ping; }"

///|
extern "js" fn svga_element_rel_ffi(obj : JsValue) -> JsValue = "(obj) => obj.rel"

///|
extern "js" fn svga_element_set_rel_ffi(obj : JsValue, rel : JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

///|
extern "js" fn svga_element_rel_list_ffi(obj : JsValue) -> JsValue = "(obj) => obj.relList"

///|
extern "js" fn svga_element_hreflang_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hreflang"

///|
extern "js" fn svga_element_set_hreflang_ffi(
  obj : JsValue,
  hreflang : JsValue,
) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

///|
extern "js" fn svga_element_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn svga_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn svga_element_referrer_policy_ffi(obj : JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
extern "js" fn svga_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
extern "js" fn svga_element_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
extern "js" fn svga_element_protocol_ffi(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
extern "js" fn svga_element_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
extern "js" fn svga_element_username_ffi(obj : JsValue) -> JsValue = "(obj) => obj.username"

///|
extern "js" fn svga_element_set_username_ffi(
  obj : JsValue,
  username : JsValue,
) -> Unit = "(obj, username) => { obj.username = username; }"

///|
extern "js" fn svga_element_password_ffi(obj : JsValue) -> JsValue = "(obj) => obj.password"

///|
extern "js" fn svga_element_set_password_ffi(
  obj : JsValue,
  password : JsValue,
) -> Unit = "(obj, password) => { obj.password = password; }"

///|
extern "js" fn svga_element_host_ffi(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
extern "js" fn svga_element_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
extern "js" fn svga_element_hostname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
extern "js" fn svga_element_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
extern "js" fn svga_element_port_ffi(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
extern "js" fn svga_element_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
extern "js" fn svga_element_pathname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
extern "js" fn svga_element_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
extern "js" fn svga_element_search_ffi(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
extern "js" fn svga_element_set_search_ffi(
  obj : JsValue,
  search : JsValue,
) -> Unit = "(obj, search) => { obj.search = search; }"

///|
extern "js" fn svga_element_hash_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
extern "js" fn svga_element_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
extern "js" fn svga_element_href_ffi(obj : JsValue) -> JsValue = "(obj) => obj.href"
