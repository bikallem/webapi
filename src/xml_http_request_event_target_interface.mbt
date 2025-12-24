///|
#external
pub type XMLHttpRequestEventTarget

///|
pub impl TJsValue for XMLHttpRequestEventTarget with to_js(
  self : XMLHttpRequestEventTarget,
) -> JsValue = "%identity"

///|
pub fn[T : TXMLHttpRequestEventTarget] XMLHttpRequestEventTarget::into(
  self : XMLHttpRequestEventTarget,
) -> T = "%identity"

///|
pub impl TXMLHttpRequestEventTarget for XMLHttpRequestEventTarget

///|
pub impl TEventTarget for XMLHttpRequestEventTarget

///|
pub trait TXMLHttpRequestEventTarget: TEventTarget {
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : EventHandler) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : EventHandler) -> Unit = _
  ontimeout(self : Self) -> EventHandler = _
  set_ontimeout(self : Self, ontimeout : EventHandler) -> Unit = _
  onloadend(self : Self) -> EventHandler = _
  set_onloadend(self : Self, onloadend : EventHandler) -> Unit = _
}

///|
extern "js" fn xml_http_request_event_target_onloadstart_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onloadstart"

///|
impl TXMLHttpRequestEventTarget with onloadstart(self : Self) -> EventHandler {
  xml_http_request_event_target_onloadstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_event_target_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
impl TXMLHttpRequestEventTarget with set_onloadstart(
  self : Self,
  onloadstart : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadstart),
  )
}

///|
extern "js" fn xml_http_request_event_target_onprogress_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onprogress"

///|
impl TXMLHttpRequestEventTarget with onprogress(self : Self) -> EventHandler {
  xml_http_request_event_target_onprogress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_event_target_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
impl TXMLHttpRequestEventTarget with set_onprogress(
  self : Self,
  onprogress : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onprogress),
  )
}

///|
extern "js" fn xml_http_request_event_target_onabort_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onabort"

///|
impl TXMLHttpRequestEventTarget with onabort(self : Self) -> EventHandler {
  xml_http_request_event_target_onabort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_event_target_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
impl TXMLHttpRequestEventTarget with set_onabort(
  self : Self,
  onabort : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onabort),
  )
}

///|
extern "js" fn xml_http_request_event_target_onerror_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onerror"

///|
impl TXMLHttpRequestEventTarget with onerror(self : Self) -> EventHandler {
  xml_http_request_event_target_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_event_target_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
impl TXMLHttpRequestEventTarget with set_onerror(
  self : Self,
  onerror : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onerror),
  )
}

///|
extern "js" fn xml_http_request_event_target_onload_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onload"

///|
impl TXMLHttpRequestEventTarget with onload(self : Self) -> EventHandler {
  xml_http_request_event_target_onload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_event_target_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
impl TXMLHttpRequestEventTarget with set_onload(
  self : Self,
  onload : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_onload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onload),
  )
}

///|
extern "js" fn xml_http_request_event_target_ontimeout_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.ontimeout"

///|
impl TXMLHttpRequestEventTarget with ontimeout(self : Self) -> EventHandler {
  xml_http_request_event_target_ontimeout_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_event_target_set_ontimeout_ffi(
  obj : JsValue,
  ontimeout : JsValue,
) -> Unit = "(obj, ontimeout) => { obj.ontimeout = ontimeout; }"

///|
impl TXMLHttpRequestEventTarget with set_ontimeout(
  self : Self,
  ontimeout : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_ontimeout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontimeout),
  )
}

///|
extern "js" fn xml_http_request_event_target_onloadend_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onloadend"

///|
impl TXMLHttpRequestEventTarget with onloadend(self : Self) -> EventHandler {
  xml_http_request_event_target_onloadend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_event_target_set_onloadend_ffi(
  obj : JsValue,
  onloadend : JsValue,
) -> Unit = "(obj, onloadend) => { obj.onloadend = onloadend; }"

///|
impl TXMLHttpRequestEventTarget with set_onloadend(
  self : Self,
  onloadend : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_onloadend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadend),
  )
}
