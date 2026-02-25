///|
extern "js" fn xml_http_request_event_target_onloadstart_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onloadstart"

///|
fn xml_http_request_event_target_onloadstart_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_event_target_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn xml_http_request_event_target_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn xml_http_request_event_target_onprogress_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onprogress"

///|
fn xml_http_request_event_target_onprogress_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_event_target_onprogress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn xml_http_request_event_target_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn xml_http_request_event_target_onabort_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onabort"

///|
fn xml_http_request_event_target_onabort_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_event_target_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn xml_http_request_event_target_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn xml_http_request_event_target_onerror_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onerror"

///|
fn xml_http_request_event_target_onerror_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_event_target_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn xml_http_request_event_target_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn xml_http_request_event_target_onload_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onload"

///|
fn xml_http_request_event_target_onload_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_event_target_onload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn xml_http_request_event_target_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn xml_http_request_event_target_ontimeout_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ontimeout"

///|
fn xml_http_request_event_target_ontimeout_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_event_target_ontimeout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn xml_http_request_event_target_set_ontimeout_ffi(
  obj : JsValue,
  ontimeout : JsValue,
) -> Unit = "(obj, ontimeout) => { obj.ontimeout = ontimeout; }"

///|
extern "js" fn xml_http_request_event_target_onloadend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onloadend"

///|
fn xml_http_request_event_target_onloadend_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_event_target_onloadend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn xml_http_request_event_target_set_onloadend_ffi(
  obj : JsValue,
  onloadend : JsValue,
) -> Unit = "(obj, onloadend) => { obj.onloadend = onloadend; }"
