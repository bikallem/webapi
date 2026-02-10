fn ui_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue) -> UIEventInit = "webapi_UIEventInit" "new"

fn ui_event_init_empty_ffi() -> UIEventInit = "webapi_Dictionary" "empty"