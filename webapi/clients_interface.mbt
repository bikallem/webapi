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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TClients] Clients::into(self : Clients) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TClients] Clients::unsafe_into(self : Clients) -> T = "%identity"

///|
pub impl HasConstructor for Clients with constructor_name() {
  "Clients"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TClients + HasConstructor] Clients::try_into(self : Clients) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn clients_get_ffi_js(obj : JsValue, id : JsValue) -> JsValue = "(obj, id) => obj.get(id)"

///|
#cfg(target="js")
fn clients_get_ffi(obj : JsValue, id : JsValue) -> JsPromise[&TClientsGet] {
  clients_get_ffi_js(obj, id).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clients_match_all_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.matchAll(options)"

///|
#cfg(target="js")
fn clients_match_all_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Array[Client]] {
  clients_match_all_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clients_open_window_ffi_js(
  obj : JsValue,
  url : JsValue,
) -> JsValue = "(obj, url) => obj.openWindow(url)"

///|
#cfg(target="js")
fn clients_open_window_ffi(
  obj : JsValue,
  url : JsValue,
) -> JsPromise[WindowClient] {
  clients_open_window_ffi_js(obj, url).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn clients_claim_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.claim()"

///|
#cfg(target="js")
fn clients_claim_ffi(obj : JsValue) -> JsPromise[JsValue] {
  clients_claim_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clients_get_ffi_wasm(obj : JsValue, id : JsValue) -> JsValue = "webapi_Clients" "get"

///|
#cfg(target="wasm-gc")
fn clients_get_ffi(obj : JsValue, id : JsValue) -> JsPromise[&TClientsGet] {
  clients_get_ffi_wasm(obj, id).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clients_match_all_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Clients" "matchAll"

///|
#cfg(target="wasm-gc")
fn clients_match_all_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Array[Client]] {
  clients_match_all_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clients_open_window_ffi_wasm(obj : JsValue, url : JsValue) -> JsValue = "webapi_Clients" "openWindow"

///|
#cfg(target="wasm-gc")
fn clients_open_window_ffi(
  obj : JsValue,
  url : JsValue,
) -> JsPromise[WindowClient] {
  clients_open_window_ffi_wasm(obj, url).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clients_claim_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Clients" "claim"

///|
#cfg(target="wasm-gc")
fn clients_claim_ffi(obj : JsValue) -> JsPromise[JsValue] {
  clients_claim_ffi_wasm(obj).unsafe_cast()
}
