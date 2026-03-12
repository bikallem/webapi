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

extern "js" fn fetch_event_init_empty_ffi() -> FetchEventInit = "() => {}"

extern "js" fn fetch_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn fetch_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn fetch_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn fetch_event_init_get_request_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.request"

///|
fn fetch_event_init_get_request_ffi(obj: JsValue) -> Request {
  fetch_event_init_get_request_ffi_js(obj).unsafe_cast()
}

extern "js" fn fetch_event_init_get_preload_response_ffi(obj: JsValue) -> JsValue = "(obj) => obj.preloadResponse"

extern "js" fn fetch_event_init_get_client_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientId"

extern "js" fn fetch_event_init_get_resulting_client_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.resultingClientId"

extern "js" fn fetch_event_init_get_replaces_client_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.replacesClientId"

extern "js" fn fetch_event_init_get_handled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.handled"