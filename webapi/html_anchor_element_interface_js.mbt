///|
extern "js" fn html_anchor_element_new_ffi() -> HTMLAnchorElement = "() => new HTMLAnchorElement()"

///|
extern "js" fn html_anchor_element_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
fn html_anchor_element_target_ffi(obj : JsValue) -> String {
  html_anchor_element_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
extern "js" fn html_anchor_element_download_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.download"

///|
fn html_anchor_element_download_ffi(obj : JsValue) -> String {
  html_anchor_element_download_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_download_ffi(
  obj : JsValue,
  download : JsValue,
) -> Unit = "(obj, download) => { obj.download = download; }"

///|
extern "js" fn html_anchor_element_ping_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ping"

///|
fn html_anchor_element_ping_ffi(obj : JsValue) -> String {
  html_anchor_element_ping_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_ping_ffi(
  obj : JsValue,
  ping : JsValue,
) -> Unit = "(obj, ping) => { obj.ping = ping; }"

///|
extern "js" fn html_anchor_element_rel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rel"

///|
fn html_anchor_element_rel_ffi(obj : JsValue) -> String {
  html_anchor_element_rel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_rel_ffi(
  obj : JsValue,
  rel : JsValue,
) -> Unit = "(obj, rel) => { obj.rel = rel; }"

///|
extern "js" fn html_anchor_element_rel_list_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.relList"

///|
fn html_anchor_element_rel_list_ffi(obj : JsValue) -> DOMTokenList {
  html_anchor_element_rel_list_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_hreflang_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hreflang"

///|
fn html_anchor_element_hreflang_ffi(obj : JsValue) -> String {
  html_anchor_element_hreflang_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_hreflang_ffi(
  obj : JsValue,
  hreflang : JsValue,
) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

///|
extern "js" fn html_anchor_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_anchor_element_type_ffi(obj : JsValue) -> String {
  html_anchor_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_anchor_element_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.text"

///|
fn html_anchor_element_text_ffi(obj : JsValue) -> String {
  html_anchor_element_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
extern "js" fn html_anchor_element_referrer_policy_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.referrerPolicy"

///|
fn html_anchor_element_referrer_policy_ffi(obj : JsValue) -> String {
  html_anchor_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
extern "js" fn html_anchor_element_coords_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.coords"

///|
fn html_anchor_element_coords_ffi(obj : JsValue) -> String {
  html_anchor_element_coords_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_coords_ffi(
  obj : JsValue,
  coords : JsValue,
) -> Unit = "(obj, coords) => { obj.coords = coords; }"

///|
extern "js" fn html_anchor_element_charset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.charset"

///|
fn html_anchor_element_charset_ffi(obj : JsValue) -> String {
  html_anchor_element_charset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_charset_ffi(
  obj : JsValue,
  charset : JsValue,
) -> Unit = "(obj, charset) => { obj.charset = charset; }"

///|
extern "js" fn html_anchor_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_anchor_element_name_ffi(obj : JsValue) -> String {
  html_anchor_element_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_anchor_element_rev_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rev"

///|
fn html_anchor_element_rev_ffi(obj : JsValue) -> String {
  html_anchor_element_rev_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_rev_ffi(
  obj : JsValue,
  rev : JsValue,
) -> Unit = "(obj, rev) => { obj.rev = rev; }"

///|
extern "js" fn html_anchor_element_shape_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.shape"

///|
fn html_anchor_element_shape_ffi(obj : JsValue) -> String {
  html_anchor_element_shape_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_shape_ffi(
  obj : JsValue,
  shape : JsValue,
) -> Unit = "(obj, shape) => { obj.shape = shape; }"

///|
extern "js" fn html_anchor_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
fn html_anchor_element_href_ffi(obj : JsValue) -> String {
  html_anchor_element_href_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_href_ffi(
  obj : JsValue,
  href : JsValue,
) -> Unit = "(obj, href) => { obj.href = href; }"

///|
extern "js" fn html_anchor_element_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
fn html_anchor_element_origin_ffi(obj : JsValue) -> String {
  html_anchor_element_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_protocol_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
fn html_anchor_element_protocol_ffi(obj : JsValue) -> String {
  html_anchor_element_protocol_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
extern "js" fn html_anchor_element_username_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.username"

///|
fn html_anchor_element_username_ffi(obj : JsValue) -> String {
  html_anchor_element_username_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_username_ffi(
  obj : JsValue,
  username : JsValue,
) -> Unit = "(obj, username) => { obj.username = username; }"

///|
extern "js" fn html_anchor_element_password_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.password"

///|
fn html_anchor_element_password_ffi(obj : JsValue) -> String {
  html_anchor_element_password_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_password_ffi(
  obj : JsValue,
  password : JsValue,
) -> Unit = "(obj, password) => { obj.password = password; }"

///|
extern "js" fn html_anchor_element_host_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
fn html_anchor_element_host_ffi(obj : JsValue) -> String {
  html_anchor_element_host_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_host_ffi(
  obj : JsValue,
  host : JsValue,
) -> Unit = "(obj, host) => { obj.host = host; }"

///|
extern "js" fn html_anchor_element_hostname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
fn html_anchor_element_hostname_ffi(obj : JsValue) -> String {
  html_anchor_element_hostname_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
extern "js" fn html_anchor_element_port_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
fn html_anchor_element_port_ffi(obj : JsValue) -> String {
  html_anchor_element_port_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_port_ffi(
  obj : JsValue,
  port : JsValue,
) -> Unit = "(obj, port) => { obj.port = port; }"

///|
extern "js" fn html_anchor_element_pathname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
fn html_anchor_element_pathname_ffi(obj : JsValue) -> String {
  html_anchor_element_pathname_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
extern "js" fn html_anchor_element_search_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
fn html_anchor_element_search_ffi(obj : JsValue) -> String {
  html_anchor_element_search_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_search_ffi(
  obj : JsValue,
  search : JsValue,
) -> Unit = "(obj, search) => { obj.search = search; }"

///|
extern "js" fn html_anchor_element_hash_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
fn html_anchor_element_hash_ffi(obj : JsValue) -> String {
  html_anchor_element_hash_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_anchor_element_set_hash_ffi(
  obj : JsValue,
  hash : JsValue,
) -> Unit = "(obj, hash) => { obj.hash = hash; }"
