// Do not edit. This file is generated.
// MoonBit type: FetchEventInit
// Specifications: service-workers.idl, dom.idl

///|
/// [FetchEventInit](https://developer.mozilla.org/en-US/docs/Web/API/FetchEventInit)
#external
pub type FetchEventInit

///|
pub impl TJsValue for FetchEventInit with to_js(self : FetchEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for FetchEventInit with from_js_any(value : JsAny) -> FetchEventInit = "%identity"

///|
pub fn FetchEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  request : &TRequest,
  preload_response? : JsPromise[JsValue],
  client_id? : String = "",
  resulting_client_id? : String = "",
  replaces_client_id? : String = "",
  handled? : JsPromise[JsValue],
) -> FetchEventInit {
  fetch_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(request),
    opt_to_js(preload_response),
    TJsValue::to_js(client_id),
    TJsValue::to_js(resulting_client_id),
    TJsValue::to_js(replaces_client_id),
    opt_to_js(handled),
  )
}

///|
pub fn FetchEventInit::empty() -> FetchEventInit {
  fetch_event_init_empty_ffi()
}

///|
pub fn FetchEventInit::bubbles(self : FetchEventInit) -> Bool? {
  fetch_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FetchEventInit::cancelable(self : FetchEventInit) -> Bool? {
  fetch_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FetchEventInit::composed(self : FetchEventInit) -> Bool? {
  fetch_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FetchEventInit::request(self : FetchEventInit) -> Request {
  fetch_event_init_get_request_ffi(TJsValue::to_js(self))
}

///|
pub fn FetchEventInit::preload_response(
  self : FetchEventInit,
) -> JsPromise[JsValue]? {
  fetch_event_init_get_preload_response_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn FetchEventInit::client_id(self : FetchEventInit) -> String? {
  fetch_event_init_get_client_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FetchEventInit::resulting_client_id(self : FetchEventInit) -> String? {
  fetch_event_init_get_resulting_client_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FetchEventInit::replaces_client_id(self : FetchEventInit) -> String? {
  fetch_event_init_get_replaces_client_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FetchEventInit::handled(self : FetchEventInit) -> JsPromise[JsValue]? {
  fetch_event_init_get_handled_ffi(TJsValue::to_js(self)).to_option()
}
