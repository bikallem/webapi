fn add_event_listener_options_ffi(capture: JsValue, passive: JsValue, once: JsValue, signal: JsValue) -> AddEventListenerOptions = "webapi_AddEventListenerOptions" "new"

fn add_event_listener_options_empty_ffi() -> AddEventListenerOptions = "webapi_Dictionary" "empty"