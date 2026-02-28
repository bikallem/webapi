///|
fn clients_get_ffi_wasm(obj : JsValue, id : JsValue) -> JsValue = "webapi_Clients" "get"

///|
fn clients_get_ffi(obj : JsValue, id : JsValue) -> JsPromise[&TClientsGet] {
  clients_get_ffi_wasm(obj, id).unsafe_cast()
}

///|
fn clients_match_all_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Clients" "matchAll"

///|
fn clients_match_all_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Array[Client]] {
  clients_match_all_ffi_wasm(obj, options).unsafe_cast()
}

///|
fn clients_open_window_ffi_wasm(obj : JsValue, url : JsValue) -> JsValue = "webapi_Clients" "openWindow"

///|
fn clients_open_window_ffi(
  obj : JsValue,
  url : JsValue,
) -> JsPromise[WindowClient] {
  clients_open_window_ffi_wasm(obj, url).unsafe_cast()
}

///|
fn clients_claim_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Clients" "claim"

///|
fn clients_claim_ffi(obj : JsValue) -> JsPromise[JsValue] {
  clients_claim_ffi_wasm(obj).unsafe_cast()
}
