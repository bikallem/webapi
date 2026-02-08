fn before_unload_event_return_value_ffi(obj: JsValue) -> JsValue = "webapi_BeforeUnloadEvent" "get_returnValue"

fn before_unload_event_set_return_value_ffi(obj: JsValue, return_value: JsValue) -> Unit = "webapi_BeforeUnloadEvent" "set_returnValue"