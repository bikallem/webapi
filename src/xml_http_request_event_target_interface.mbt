// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequestEventTarget
// Specifications: xhr.idl

///|
/// [XMLHttpRequestEventTarget](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget)
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
/// [XMLHttpRequestEventTarget](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget) interface.
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
/// [XMLHttpRequestEventTarget.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadstart)
impl TXMLHttpRequestEventTarget with onloadstart(self : Self) -> EventHandler {
  xml_http_request_event_target_onloadstart_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequestEventTarget.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadstart)
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
/// [XMLHttpRequestEventTarget.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onprogress)
impl TXMLHttpRequestEventTarget with onprogress(self : Self) -> EventHandler {
  xml_http_request_event_target_onprogress_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequestEventTarget.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onprogress)
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
/// [XMLHttpRequestEventTarget.onabort](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onabort)
impl TXMLHttpRequestEventTarget with onabort(self : Self) -> EventHandler {
  xml_http_request_event_target_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequestEventTarget.onabort](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onabort)
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
/// [XMLHttpRequestEventTarget.onerror](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onerror)
impl TXMLHttpRequestEventTarget with onerror(self : Self) -> EventHandler {
  xml_http_request_event_target_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequestEventTarget.onerror](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onerror)
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
/// [XMLHttpRequestEventTarget.onload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onload)
impl TXMLHttpRequestEventTarget with onload(self : Self) -> EventHandler {
  xml_http_request_event_target_onload_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequestEventTarget.onload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onload)
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
/// [XMLHttpRequestEventTarget.ontimeout](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/ontimeout)
impl TXMLHttpRequestEventTarget with ontimeout(self : Self) -> EventHandler {
  xml_http_request_event_target_ontimeout_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequestEventTarget.ontimeout](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/ontimeout)
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
/// [XMLHttpRequestEventTarget.onloadend](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadend)
impl TXMLHttpRequestEventTarget with onloadend(self : Self) -> EventHandler {
  xml_http_request_event_target_onloadend_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequestEventTarget.onloadend](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadend)
impl TXMLHttpRequestEventTarget with set_onloadend(
  self : Self,
  onloadend : EventHandler,
) -> Unit {
  xml_http_request_event_target_set_onloadend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadend),
  )
}
