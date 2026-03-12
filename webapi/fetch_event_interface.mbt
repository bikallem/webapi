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
pub fn[T : TFetchEvent] FetchEvent::into(self : FetchEvent) -> T = "%identity"

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
