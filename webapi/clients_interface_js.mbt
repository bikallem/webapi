///|
extern "js" fn clients_get_ffi_js(obj : JsValue, id : JsValue) -> JsValue = "(obj, id) => obj.get(id)"

///|
fn clients_get_ffi(obj : JsValue, id : JsValue) -> JsPromise[&TClientsGet] {
  clients_get_ffi_js(obj, id).unsafe_cast()
}

///|
extern "js" fn clients_match_all_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.matchAll(options)"

///|
fn clients_match_all_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Array[Client]] {
  clients_match_all_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn clients_open_window_ffi_js(
  obj : JsValue,
  url : JsValue,
) -> JsValue = "(obj, url) => obj.openWindow(url)"

///|
fn clients_open_window_ffi(
  obj : JsValue,
  url : JsValue,
) -> JsPromise[WindowClient] {
  clients_open_window_ffi_js(obj, url).unsafe_cast()
}

///|
extern "js" fn clients_claim_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.claim()"

///|
fn clients_claim_ffi(obj : JsValue) -> JsPromise[JsValue] {
  clients_claim_ffi_js(obj).unsafe_cast()
}
