fn response_init_ffi(status: JsValue, status_text: JsValue, headers: JsValue) -> ResponseInit = "webapi_ResponseInit" "new"

fn response_init_empty_ffi() -> ResponseInit = "webapi_Dictionary" "empty"

fn response_init_get_status_ffi(obj: JsValue) -> JsValue = "webapi_ResponseInit" "get_status"

fn response_init_get_status_text_ffi(obj: JsValue) -> JsValue = "webapi_ResponseInit" "get_statusText"

fn response_init_get_headers_ffi(obj: JsValue) -> JsValue = "webapi_ResponseInit" "get_headers"