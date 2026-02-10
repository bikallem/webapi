fn response_init_ffi(status: JsValue, status_text: JsValue, headers: JsValue) -> ResponseInit = "webapi_ResponseInit" "new"

fn response_init_empty_ffi() -> ResponseInit = "webapi_Dictionary" "empty"