// Do not edit. This file is generated.
// MoonBit type: FetchEvent
// Specifications: service-workers.idl

///|
/// [FetchEvent](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent)
#external
pub type FetchEvent

///|
pub impl TJsValue for FetchEvent with to_js(self : FetchEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for FetchEvent with from_js_any(value : JsAny) -> FetchEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TFetchEvent] FetchEvent::into(self : FetchEvent) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TFetchEvent] FetchEvent::unsafe_into(self : FetchEvent) -> T = "%identity"

///|
pub impl HasConstructor for FetchEvent with constructor_name() {
  "FetchEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFetchEvent + HasConstructor] FetchEvent::try_into(
  self : FetchEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TFetchEvent for FetchEvent

///|
pub impl TExtendableEvent for FetchEvent

///|
pub impl TEvent for FetchEvent

///|
pub fn FetchEvent::new(
  type_ : String,
  event_init_dict : FetchEventInit,
) -> FetchEvent {
  fetch_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
/// [FetchEvent](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent) interface.
pub trait TFetchEvent: TExtendableEvent {
  request(self : Self) -> Request = _
  preload_response(self : Self) -> JsPromise[JsValue] = _
  client_id(self : Self) -> String = _
  resulting_client_id(self : Self) -> String = _
  replaces_client_id(self : Self) -> String = _
  handled(self : Self) -> JsPromise[JsValue] = _
  respond_with(self : Self, r : JsPromise[Response]) -> Unit = _
}

///|
/// [FetchEvent.request](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent/request)
impl TFetchEvent with request(self : Self) -> Request {
  fetch_event_request_ffi(TJsValue::to_js(self))
}

///|
/// [FetchEvent.preloadResponse](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent/preloadResponse)
impl TFetchEvent with preload_response(self : Self) -> JsPromise[JsValue] {
  fetch_event_preload_response_ffi(TJsValue::to_js(self))
}

///|
/// [FetchEvent.clientId](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent/clientId)
impl TFetchEvent with client_id(self : Self) -> String {
  fetch_event_client_id_ffi(TJsValue::to_js(self))
}

///|
/// [FetchEvent.resultingClientId](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent/resultingClientId)
impl TFetchEvent with resulting_client_id(self : Self) -> String {
  fetch_event_resulting_client_id_ffi(TJsValue::to_js(self))
}

///|
/// [FetchEvent.replacesClientId](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent/replacesClientId)
impl TFetchEvent with replaces_client_id(self : Self) -> String {
  fetch_event_replaces_client_id_ffi(TJsValue::to_js(self))
}

///|
/// [FetchEvent.handled](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent/handled)
impl TFetchEvent with handled(self : Self) -> JsPromise[JsValue] {
  fetch_event_handled_ffi(TJsValue::to_js(self))
}

///|
/// [FetchEvent.respondWith](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent/respondWith)
impl TFetchEvent with respond_with(self : Self, r : JsPromise[Response]) -> Unit {
  fetch_event_respond_with_ffi(TJsValue::to_js(self), TJsValue::to_js(r))
}

///|
#cfg(target="js")
extern "js" fn fetch_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FetchEvent = "(type_, event_init_dict) => new FetchEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn fetch_event_request_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.request"

///|
#cfg(target="js")
fn fetch_event_request_ffi(obj : JsValue) -> Request {
  fetch_event_request_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn fetch_event_preload_response_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.preloadResponse"

///|
#cfg(target="js")
fn fetch_event_preload_response_ffi(obj : JsValue) -> JsPromise[JsValue] {
  fetch_event_preload_response_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn fetch_event_client_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientId"

///|
#cfg(target="js")
fn fetch_event_client_id_ffi(obj : JsValue) -> String {
  fetch_event_client_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn fetch_event_resulting_client_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.resultingClientId"

///|
#cfg(target="js")
fn fetch_event_resulting_client_id_ffi(obj : JsValue) -> String {
  fetch_event_resulting_client_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn fetch_event_replaces_client_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.replacesClientId"

///|
#cfg(target="js")
fn fetch_event_replaces_client_id_ffi(obj : JsValue) -> String {
  fetch_event_replaces_client_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn fetch_event_handled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.handled"

///|
#cfg(target="js")
fn fetch_event_handled_ffi(obj : JsValue) -> JsPromise[JsValue] {
  fetch_event_handled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn fetch_event_respond_with_ffi(obj : JsValue, r : JsValue) -> Unit = "(obj, r) => obj.respondWith(r)"

///|
#cfg(target="wasm-gc")
fn fetch_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FetchEvent = "webapi_FetchEvent" "new"

///|
#cfg(target="wasm-gc")
fn fetch_event_request_ffi(obj : JsValue) -> Request = "webapi_FetchEvent" "get_request"

///|
#cfg(target="wasm-gc")
fn fetch_event_preload_response_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_preloadResponse"

///|
#cfg(target="wasm-gc")
fn fetch_event_preload_response_ffi(obj : JsValue) -> JsPromise[JsValue] {
  fetch_event_preload_response_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn fetch_event_client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_clientId"

///|
#cfg(target="wasm-gc")
fn fetch_event_client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(fetch_event_client_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn fetch_event_resulting_client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_resultingClientId"

///|
#cfg(target="wasm-gc")
fn fetch_event_resulting_client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(fetch_event_resulting_client_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn fetch_event_replaces_client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_replacesClientId"

///|
#cfg(target="wasm-gc")
fn fetch_event_replaces_client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(fetch_event_replaces_client_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn fetch_event_handled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_handled"

///|
#cfg(target="wasm-gc")
fn fetch_event_handled_ffi(obj : JsValue) -> JsPromise[JsValue] {
  fetch_event_handled_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn fetch_event_respond_with_ffi(obj : JsValue, r : JsValue) -> Unit = "webapi_FetchEvent" "respondWith"
