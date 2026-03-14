// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequestEventTarget
// Specifications: xhr.idl

/// [XMLHttpRequestEventTarget](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget)
#external
pub type XMLHttpRequestEventTarget

pub impl TJsValue for XMLHttpRequestEventTarget with to_js(self: XMLHttpRequestEventTarget) -> JsValue = "%identity"

pub impl FromJsAny for XMLHttpRequestEventTarget with from_js_any(value : JsAny) -> XMLHttpRequestEventTarget = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TXMLHttpRequestEventTarget] XMLHttpRequestEventTarget::into(self : XMLHttpRequestEventTarget) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TXMLHttpRequestEventTarget] XMLHttpRequestEventTarget::unsafe_into(self : XMLHttpRequestEventTarget) -> T = "%identity"

pub impl HasConstructor for XMLHttpRequestEventTarget with constructor_name() { "XMLHttpRequestEventTarget" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TXMLHttpRequestEventTarget + HasConstructor] XMLHttpRequestEventTarget::try_into(self : XMLHttpRequestEventTarget) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TXMLHttpRequestEventTarget for XMLHttpRequestEventTarget

pub impl TEventTarget for XMLHttpRequestEventTarget

/// [XMLHttpRequestEventTarget](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget) interface.
pub trait TXMLHttpRequestEventTarget: TEventTarget {
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : (Event) -> JsValue) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : (Event) -> JsValue) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : (Event) -> JsValue) -> Unit = _
  ontimeout(self : Self) -> EventHandler = _
  set_ontimeout(self : Self, ontimeout : (Event) -> JsValue) -> Unit = _
  onloadend(self : Self) -> EventHandler = _
  set_onloadend(self : Self, onloadend : (Event) -> JsValue) -> Unit = _
}

/// [XMLHttpRequestEventTarget.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadstart)
impl TXMLHttpRequestEventTarget with onloadstart(self : Self) -> EventHandler {
  xml_http_request_event_target_onloadstart_ffi(TJsValue::to_js(self))
}

/// [XMLHttpRequestEventTarget.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadstart)
impl TXMLHttpRequestEventTarget with set_onloadstart(self : Self, 
onloadstart : (Event) -> JsValue) -> Unit {
  xml_http_request_event_target_set_onloadstart_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onloadstart)))
}

/// [XMLHttpRequestEventTarget.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onprogress)
impl TXMLHttpRequestEventTarget with onprogress(self : Self) -> EventHandler {
  xml_http_request_event_target_onprogress_ffi(TJsValue::to_js(self))
}

/// [XMLHttpRequestEventTarget.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onprogress)
impl TXMLHttpRequestEventTarget with set_onprogress(self : Self, 
onprogress : (Event) -> JsValue) -> Unit {
  xml_http_request_event_target_set_onprogress_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onprogress)))
}

/// [XMLHttpRequestEventTarget.onabort](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onabort)
impl TXMLHttpRequestEventTarget with onabort(self : Self) -> EventHandler {
  xml_http_request_event_target_onabort_ffi(TJsValue::to_js(self))
}

/// [XMLHttpRequestEventTarget.onabort](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onabort)
impl TXMLHttpRequestEventTarget with set_onabort(self : Self, 
onabort : (Event) -> JsValue) -> Unit {
  xml_http_request_event_target_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onabort)))
}

/// [XMLHttpRequestEventTarget.onerror](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onerror)
impl TXMLHttpRequestEventTarget with onerror(self : Self) -> EventHandler {
  xml_http_request_event_target_onerror_ffi(TJsValue::to_js(self))
}

/// [XMLHttpRequestEventTarget.onerror](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onerror)
impl TXMLHttpRequestEventTarget with set_onerror(self : Self, 
onerror : (Event) -> JsValue) -> Unit {
  xml_http_request_event_target_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onerror)))
}

/// [XMLHttpRequestEventTarget.onload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onload)
impl TXMLHttpRequestEventTarget with onload(self : Self) -> EventHandler {
  xml_http_request_event_target_onload_ffi(TJsValue::to_js(self))
}

/// [XMLHttpRequestEventTarget.onload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onload)
impl TXMLHttpRequestEventTarget with set_onload(self : Self, 
onload : (Event) -> JsValue) -> Unit {
  xml_http_request_event_target_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onload)))
}

/// [XMLHttpRequestEventTarget.ontimeout](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/ontimeout)
impl TXMLHttpRequestEventTarget with ontimeout(self : Self) -> EventHandler {
  xml_http_request_event_target_ontimeout_ffi(TJsValue::to_js(self))
}

/// [XMLHttpRequestEventTarget.ontimeout](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/ontimeout)
impl TXMLHttpRequestEventTarget with set_ontimeout(self : Self, 
ontimeout : (Event) -> JsValue) -> Unit {
  xml_http_request_event_target_set_ontimeout_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(ontimeout)))
}

/// [XMLHttpRequestEventTarget.onloadend](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadend)
impl TXMLHttpRequestEventTarget with onloadend(self : Self) -> EventHandler {
  xml_http_request_event_target_onloadend_ffi(TJsValue::to_js(self))
}

/// [XMLHttpRequestEventTarget.onloadend](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget/onloadend)
impl TXMLHttpRequestEventTarget with set_onloadend(self : Self, 
onloadend : (Event) -> JsValue) -> Unit {
  xml_http_request_event_target_set_onloadend_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onloadend)))
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_onloadstart_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
#cfg(target="js")
fn xml_http_request_event_target_onloadstart_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onloadstart_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_set_onloadstart_ffi(obj: JsValue, onloadstart: JsValue) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

#cfg(target="js")
extern "js" fn xml_http_request_event_target_onprogress_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
#cfg(target="js")
fn xml_http_request_event_target_onprogress_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onprogress_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_set_onprogress_ffi(obj: JsValue, onprogress: JsValue) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

#cfg(target="js")
extern "js" fn xml_http_request_event_target_onabort_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn xml_http_request_event_target_onabort_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onabort_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

#cfg(target="js")
extern "js" fn xml_http_request_event_target_onerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn xml_http_request_event_target_onerror_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

#cfg(target="js")
extern "js" fn xml_http_request_event_target_onload_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onload"

///|
#cfg(target="js")
fn xml_http_request_event_target_onload_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onload_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_set_onload_ffi(obj: JsValue, onload: JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

#cfg(target="js")
extern "js" fn xml_http_request_event_target_ontimeout_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ontimeout"

///|
#cfg(target="js")
fn xml_http_request_event_target_ontimeout_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_ontimeout_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_set_ontimeout_ffi(obj: JsValue, ontimeout: JsValue) -> Unit = "(obj, ontimeout) => { obj.ontimeout = ontimeout; }"

#cfg(target="js")
extern "js" fn xml_http_request_event_target_onloadend_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onloadend"

///|
#cfg(target="js")
fn xml_http_request_event_target_onloadend_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onloadend_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn xml_http_request_event_target_set_onloadend_ffi(obj: JsValue, onloadend: JsValue) -> Unit = "(obj, onloadend) => { obj.onloadend = onloadend; }"

#cfg(target="wasm-gc")
fn xml_http_request_event_target_onloadstart_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XMLHttpRequestEventTarget" "get_onloadstart"

///|
#cfg(target="wasm-gc")
fn xml_http_request_event_target_onloadstart_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onloadstart_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn xml_http_request_event_target_set_onloadstart_ffi(obj: JsValue, onloadstart: JsValue) -> Unit = "webapi_XMLHttpRequestEventTarget" "set_onloadstart"

#cfg(target="wasm-gc")
fn xml_http_request_event_target_onprogress_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XMLHttpRequestEventTarget" "get_onprogress"

///|
#cfg(target="wasm-gc")
fn xml_http_request_event_target_onprogress_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onprogress_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn xml_http_request_event_target_set_onprogress_ffi(obj: JsValue, onprogress: JsValue) -> Unit = "webapi_XMLHttpRequestEventTarget" "set_onprogress"

#cfg(target="wasm-gc")
fn xml_http_request_event_target_onabort_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XMLHttpRequestEventTarget" "get_onabort"

///|
#cfg(target="wasm-gc")
fn xml_http_request_event_target_onabort_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onabort_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn xml_http_request_event_target_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "webapi_XMLHttpRequestEventTarget" "set_onabort"

#cfg(target="wasm-gc")
fn xml_http_request_event_target_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XMLHttpRequestEventTarget" "get_onerror"

///|
#cfg(target="wasm-gc")
fn xml_http_request_event_target_onerror_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn xml_http_request_event_target_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_XMLHttpRequestEventTarget" "set_onerror"

#cfg(target="wasm-gc")
fn xml_http_request_event_target_onload_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XMLHttpRequestEventTarget" "get_onload"

///|
#cfg(target="wasm-gc")
fn xml_http_request_event_target_onload_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onload_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn xml_http_request_event_target_set_onload_ffi(obj: JsValue, onload: JsValue) -> Unit = "webapi_XMLHttpRequestEventTarget" "set_onload"

#cfg(target="wasm-gc")
fn xml_http_request_event_target_ontimeout_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XMLHttpRequestEventTarget" "get_ontimeout"

///|
#cfg(target="wasm-gc")
fn xml_http_request_event_target_ontimeout_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_ontimeout_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn xml_http_request_event_target_set_ontimeout_ffi(obj: JsValue, ontimeout: JsValue) -> Unit = "webapi_XMLHttpRequestEventTarget" "set_ontimeout"

#cfg(target="wasm-gc")
fn xml_http_request_event_target_onloadend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XMLHttpRequestEventTarget" "get_onloadend"

///|
#cfg(target="wasm-gc")
fn xml_http_request_event_target_onloadend_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_event_target_onloadend_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn xml_http_request_event_target_set_onloadend_ffi(obj: JsValue, onloadend: JsValue) -> Unit = "webapi_XMLHttpRequestEventTarget" "set_onloadend"