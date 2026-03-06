// Do not edit. This file is generated.
// MoonBit type: Clients
// Specifications: service-workers.idl

///|
/// [Clients](https://developer.mozilla.org/en-US/docs/Web/API/Clients)
#external
pub type Clients

///|
pub impl TJsValue for Clients with to_js(self : Clients) -> JsValue = "%identity"

///|
pub impl FromJsAny for Clients with from_js_any(value : JsAny) -> Clients = "%identity"

///|
pub fn[T : TClients] Clients::into(self : Clients) -> T = "%identity"

///|
pub impl TClients for Clients

///|
pub(open) trait TClientsGet: TJsValue {}

///|
pub impl TClientsGet for Client

///|
pub impl TClientsGet for JsUndefined

///|
/// [Clients](https://developer.mozilla.org/en-US/docs/Web/API/Clients) interface.
pub trait TClients: TJsValue {
  get(self : Self, id : String) -> JsPromise[&TClientsGet] = _
  match_all(self : Self, options? : ClientQueryOptions) -> JsPromise[
    Array[Client],
  ] = _
  open_window(self : Self, url : String) -> JsPromise[WindowClient] = _
  claim(self : Self) -> JsPromise[JsValue] = _
}

///|
/// [Clients.get](https://developer.mozilla.org/en-US/docs/Web/API/Clients/get)
impl TClients with get(self : Self, id : String) -> JsPromise[&TClientsGet] {
  clients_get_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
/// [Clients.matchAll](https://developer.mozilla.org/en-US/docs/Web/API/Clients/matchAll)
impl TClients with match_all(self : Self, options? : ClientQueryOptions) -> JsPromise[
  Array[Client],
] {
  clients_match_all_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Clients.openWindow](https://developer.mozilla.org/en-US/docs/Web/API/Clients/openWindow)
impl TClients with open_window(self : Self, url : String) -> JsPromise[
  WindowClient,
] {
  clients_open_window_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
/// [Clients.claim](https://developer.mozilla.org/en-US/docs/Web/API/Clients/claim)
impl TClients with claim(self : Self) -> JsPromise[JsValue] {
  clients_claim_ffi(TJsValue::to_js(self))
}
