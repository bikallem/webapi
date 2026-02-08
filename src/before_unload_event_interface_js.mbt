extern "js" fn before_unload_event_return_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.returnValue"

extern "js" fn before_unload_event_set_return_value_ffi(obj: JsValue, return_value: JsValue) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"