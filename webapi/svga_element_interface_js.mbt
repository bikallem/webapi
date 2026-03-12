extern "js" fn svga_element_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn svga_element_target_ffi(obj: JsValue) -> SVGAnimatedString {
  svga_element_target_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_download_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.download"

///|
fn svga_element_download_ffi(obj: JsValue) -> String {
  svga_element_download_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_download_ffi(obj: JsValue, download: JsValue) -> Unit = "(obj, download) => { obj.download = download; }"

extern "js" fn svga_element_ping_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ping"

///|
fn svga_element_ping_ffi(obj: JsValue) -> String {
  svga_element_ping_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_ping_ffi(obj: JsValue, ping: JsValue) -> Unit = "(obj, ping) => { obj.ping = ping; }"

extern "js" fn svga_element_rel_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rel"

///|
fn svga_element_rel_ffi(obj: JsValue) -> String {
  svga_element_rel_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

extern "js" fn svga_element_rel_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.relList"

///|
fn svga_element_rel_list_ffi(obj: JsValue) -> DOMTokenList {
  svga_element_rel_list_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_hreflang_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hreflang"

///|
fn svga_element_hreflang_ffi(obj: JsValue) -> String {
  svga_element_hreflang_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_hreflang_ffi(obj: JsValue, hreflang: JsValue) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

extern "js" fn svga_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn svga_element_type_ffi(obj: JsValue) -> String {
  svga_element_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

extern "js" fn svga_element_referrer_policy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
fn svga_element_referrer_policy_ffi(obj: JsValue) -> String {
  svga_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

extern "js" fn svga_element_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.origin"

///|
fn svga_element_origin_ffi(obj: JsValue) -> String {
  svga_element_origin_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_protocol_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

///|
fn svga_element_protocol_ffi(obj: JsValue) -> String {
  svga_element_protocol_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_protocol_ffi(obj: JsValue, protocol: JsValue) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

extern "js" fn svga_element_username_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.username"

///|
fn svga_element_username_ffi(obj: JsValue) -> String {
  svga_element_username_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_username_ffi(obj: JsValue, username: JsValue) -> Unit = "(obj, username) => { obj.username = username; }"

extern "js" fn svga_element_password_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.password"

///|
fn svga_element_password_ffi(obj: JsValue) -> String {
  svga_element_password_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_password_ffi(obj: JsValue, password: JsValue) -> Unit = "(obj, password) => { obj.password = password; }"

extern "js" fn svga_element_host_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.host"

///|
fn svga_element_host_ffi(obj: JsValue) -> String {
  svga_element_host_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_host_ffi(obj: JsValue, host: JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

extern "js" fn svga_element_hostname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

///|
fn svga_element_hostname_ffi(obj: JsValue) -> String {
  svga_element_hostname_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_hostname_ffi(obj: JsValue, hostname: JsValue) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

extern "js" fn svga_element_port_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port"

///|
fn svga_element_port_ffi(obj: JsValue) -> String {
  svga_element_port_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_port_ffi(obj: JsValue, port: JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

extern "js" fn svga_element_pathname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

///|
fn svga_element_pathname_ffi(obj: JsValue) -> String {
  svga_element_pathname_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_pathname_ffi(obj: JsValue, pathname: JsValue) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

extern "js" fn svga_element_search_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.search"

///|
fn svga_element_search_ffi(obj: JsValue) -> String {
  svga_element_search_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_search_ffi(obj: JsValue, search: JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

extern "js" fn svga_element_hash_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hash"

///|
fn svga_element_hash_ffi(obj: JsValue) -> String {
  svga_element_hash_ffi_js(obj).unsafe_cast()
}

extern "js" fn svga_element_set_hash_ffi(obj: JsValue, hash: JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

extern "js" fn svga_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
fn svga_element_href_ffi(obj: JsValue) -> SVGAnimatedString {
  svga_element_href_ffi_js(obj).unsafe_cast()
}