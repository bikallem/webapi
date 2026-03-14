// Do not edit. This file is generated.
// MoonBit type: FetchEventInit
// Specifications: service-workers.idl, dom.idl

/// [FetchEventInit](https://developer.mozilla.org/en-US/docs/Web/API/FetchEventInit)
#external
pub type FetchEventInit

pub impl TJsValue for FetchEventInit with to_js(self: FetchEventInit) -> JsValue = "%identity"

pub impl FromJsAny for FetchEventInit with from_js_any(value : JsAny) -> FetchEventInit = "%identity"

pub fn FetchEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
request : &TRequest, 
preload_response? : JsPromise[JsValue], 
client_id? : String, 
resulting_client_id? : String, 
replaces_client_id? : String, 
handled? : JsPromise[JsValue]) -> FetchEventInit {
  fetch_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), TJsValue::to_js(request), opt_to_js(preload_response), opt_to_js(client_id), opt_to_js(resulting_client_id), opt_to_js(replaces_client_id), opt_to_js(handled))
}

pub fn FetchEventInit::empty() -> FetchEventInit { fetch_event_init_empty_ffi() }

pub fn FetchEventInit::bubbles(self : FetchEventInit) -> Bool? {
  fetch_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FetchEventInit::cancelable(self : FetchEventInit) -> Bool? {
  fetch_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FetchEventInit::composed(self : FetchEventInit) -> Bool? {
  fetch_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FetchEventInit::request(self : FetchEventInit) -> Request {
  fetch_event_init_get_request_ffi(TJsValue::to_js(self))
}

pub fn FetchEventInit::preload_response(self : FetchEventInit) -> JsPromise[JsValue]? {
  fetch_event_init_get_preload_response_ffi(TJsValue::to_js(self)).to_option()
}

pub fn FetchEventInit::client_id(self : FetchEventInit) -> String? {
  fetch_event_init_get_client_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FetchEventInit::resulting_client_id(self : FetchEventInit) -> String? {
  fetch_event_init_get_resulting_client_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FetchEventInit::replaces_client_id(self : FetchEventInit) -> String? {
  fetch_event_init_get_replaces_client_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FetchEventInit::handled(self : FetchEventInit) -> JsPromise[JsValue]? {
  fetch_event_init_get_handled_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn fetch_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, request: JsValue, preload_response: JsValue, client_id: JsValue, resulting_client_id: JsValue, replaces_client_id: JsValue, handled: JsValue) -> FetchEventInit = 
#|(bubbles, cancelable, composed, request, preloadResponse, clientId, resultingClientId, replacesClientId, handled) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (request !== undefined) obj.request = request;
#|  if (preloadResponse !== undefined) obj.preloadResponse = preloadResponse;
#|  if (clientId !== undefined) obj.clientId = clientId;
#|  if (resultingClientId !== undefined) obj.resultingClientId = resultingClientId;
#|  if (replacesClientId !== undefined) obj.replacesClientId = replacesClientId;
#|  if (handled !== undefined) obj.handled = handled;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn fetch_event_init_empty_ffi() -> FetchEventInit = "() => {}"

#cfg(target="js")
extern "js" fn fetch_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn fetch_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn fetch_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn fetch_event_init_get_request_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.request"

///|
#cfg(target="js")
fn fetch_event_init_get_request_ffi(obj: JsValue) -> Request {
  fetch_event_init_get_request_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn fetch_event_init_get_preload_response_ffi(obj: JsValue) -> JsValue = "(obj) => obj.preloadResponse"

#cfg(target="js")
extern "js" fn fetch_event_init_get_client_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientId"

#cfg(target="js")
extern "js" fn fetch_event_init_get_resulting_client_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.resultingClientId"

#cfg(target="js")
extern "js" fn fetch_event_init_get_replaces_client_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.replacesClientId"

#cfg(target="js")
extern "js" fn fetch_event_init_get_handled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.handled"

#cfg(target="wasm-gc")
fn fetch_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, request: JsValue, preload_response: JsValue, client_id: JsValue, resulting_client_id: JsValue, replaces_client_id: JsValue, handled: JsValue) -> FetchEventInit = "webapi_FetchEventInit" "new"

#cfg(target="wasm-gc")
fn fetch_event_init_empty_ffi() -> FetchEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn fetch_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn fetch_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn fetch_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_composed"

#cfg(target="wasm-gc")
fn fetch_event_init_get_request_ffi(obj: JsValue) -> Request = "webapi_FetchEventInit" "get_request"

#cfg(target="wasm-gc")
fn fetch_event_init_get_preload_response_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_preloadResponse"

#cfg(target="wasm-gc")
fn fetch_event_init_get_client_id_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_clientId"

#cfg(target="wasm-gc")
fn fetch_event_init_get_resulting_client_id_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_resultingClientId"

#cfg(target="wasm-gc")
fn fetch_event_init_get_replaces_client_id_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_replacesClientId"

#cfg(target="wasm-gc")
fn fetch_event_init_get_handled_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_handled"