///|
extern "js" fn html_script_element_new_ffi() -> HTMLScriptElement = "() => new HTMLScriptElement()"

///|
extern "js" fn html_script_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_script_element_type_ffi(obj : JsValue) -> String {
  html_script_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_script_element_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
fn html_script_element_src_ffi(obj : JsValue) -> String {
  html_script_element_src_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
extern "js" fn html_script_element_no_module_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.noModule"

///|
fn html_script_element_no_module_ffi(obj : JsValue) -> Bool {
  html_script_element_no_module_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_no_module_ffi(
  obj : JsValue,
  no_module : JsValue,
) -> Unit = "(obj, noModule) => { obj.noModule = noModule; }"

///|
extern "js" fn html_script_element_async_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.async"

///|
fn html_script_element_async_ffi(obj : JsValue) -> Bool {
  html_script_element_async_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_async_ffi(
  obj : JsValue,
  async_ : JsValue,
) -> Unit = "(obj, async) => { obj.async = async; }"

///|
extern "js" fn html_script_element_defer_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.defer"

///|
fn html_script_element_defer_ffi(obj : JsValue) -> Bool {
  html_script_element_defer_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_defer_ffi(
  obj : JsValue,
  defer_ : JsValue,
) -> Unit = "(obj, defer) => { obj.defer = defer; }"

///|
extern "js" fn html_script_element_blocking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.blocking"

///|
fn html_script_element_blocking_ffi(obj : JsValue) -> DOMTokenList {
  html_script_element_blocking_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_cross_origin_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.crossOrigin"

///|
fn html_script_element_cross_origin_ffi(obj : JsValue) -> String {
  html_script_element_cross_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
extern "js" fn html_script_element_referrer_policy_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.referrerPolicy"

///|
fn html_script_element_referrer_policy_ffi(obj : JsValue) -> String {
  html_script_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
extern "js" fn html_script_element_integrity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.integrity"

///|
fn html_script_element_integrity_ffi(obj : JsValue) -> String {
  html_script_element_integrity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_integrity_ffi(
  obj : JsValue,
  integrity : JsValue,
) -> Unit = "(obj, integrity) => { obj.integrity = integrity; }"

///|
extern "js" fn html_script_element_fetch_priority_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fetchPriority"

///|
fn html_script_element_fetch_priority_ffi(obj : JsValue) -> String {
  html_script_element_fetch_priority_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_fetch_priority_ffi(
  obj : JsValue,
  fetch_priority : JsValue,
) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

///|
extern "js" fn html_script_element_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.text"

///|
fn html_script_element_text_ffi(obj : JsValue) -> String {
  html_script_element_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
extern "js" fn html_script_element_supports_ffi_js(type_ : JsValue) -> JsValue = "(type_) => HTMLScriptElement.supports(type_)"

///|
fn html_script_element_supports_ffi(type_ : JsValue) -> Bool {
  html_script_element_supports_ffi_js(type_).unsafe_cast()
}

///|
extern "js" fn html_script_element_charset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.charset"

///|
fn html_script_element_charset_ffi(obj : JsValue) -> String {
  html_script_element_charset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_charset_ffi(
  obj : JsValue,
  charset : JsValue,
) -> Unit = "(obj, charset) => { obj.charset = charset; }"

///|
extern "js" fn html_script_element_event_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.event"

///|
fn html_script_element_event_ffi(obj : JsValue) -> String {
  html_script_element_event_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_event_ffi(
  obj : JsValue,
  event : JsValue,
) -> Unit = "(obj, event) => { obj.event = event; }"

///|
extern "js" fn html_script_element_html_for_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.htmlFor"

///|
fn html_script_element_html_for_ffi(obj : JsValue) -> String {
  html_script_element_html_for_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_script_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "(obj, htmlFor) => { obj.htmlFor = htmlFor; }"
