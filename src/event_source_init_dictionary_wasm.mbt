fn event_source_init_ffi(with_credentials: JsValue) -> EventSourceInit = "webapi_EventSourceInit" "new"

fn event_source_init_empty_ffi() -> EventSourceInit = "webapi_Dictionary" "empty"