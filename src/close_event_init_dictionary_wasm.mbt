fn close_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, was_clean: JsValue, code: JsValue, reason: JsValue) -> CloseEventInit = "webapi_CloseEventInit" "new"

fn close_event_init_empty_ffi() -> CloseEventInit = "webapi_Dictionary" "empty"