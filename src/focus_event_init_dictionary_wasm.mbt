fn focus_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, related_target: JsValue) -> FocusEventInit = "webapi_FocusEventInit" "new"

fn focus_event_init_empty_ffi() -> FocusEventInit = "webapi_Dictionary" "empty"