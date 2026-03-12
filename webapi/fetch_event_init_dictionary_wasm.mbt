fn fetch_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, request: JsValue, preload_response: JsValue, client_id: JsValue, resulting_client_id: JsValue, replaces_client_id: JsValue, handled: JsValue) -> FetchEventInit = "webapi_FetchEventInit" "new"

fn fetch_event_init_empty_ffi() -> FetchEventInit = "webapi_Dictionary" "empty"

fn fetch_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_bubbles"

fn fetch_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_cancelable"

fn fetch_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_composed"

fn fetch_event_init_get_request_ffi(obj: JsValue) -> Request = "webapi_FetchEventInit" "get_request"

fn fetch_event_init_get_preload_response_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_preloadResponse"

fn fetch_event_init_get_client_id_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_clientId"

fn fetch_event_init_get_resulting_client_id_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_resultingClientId"

fn fetch_event_init_get_replaces_client_id_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_replacesClientId"

fn fetch_event_init_get_handled_ffi(obj: JsValue) -> JsValue = "webapi_FetchEventInit" "get_handled"