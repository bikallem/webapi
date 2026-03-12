fn close_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, was_clean: JsValue, code: JsValue, reason: JsValue) -> CloseEventInit = "webapi_CloseEventInit" "new"

fn close_event_init_empty_ffi() -> CloseEventInit = "webapi_Dictionary" "empty"

fn close_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_CloseEventInit" "get_bubbles"

fn close_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_CloseEventInit" "get_cancelable"

fn close_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_CloseEventInit" "get_composed"

fn close_event_init_get_was_clean_ffi(obj: JsValue) -> JsValue = "webapi_CloseEventInit" "get_wasClean"

fn close_event_init_get_code_ffi(obj: JsValue) -> JsValue = "webapi_CloseEventInit" "get_code"

fn close_event_init_get_reason_ffi(obj: JsValue) -> JsValue = "webapi_CloseEventInit" "get_reason"