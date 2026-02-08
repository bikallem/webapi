extern "js" fn abort_controller_new_ffi() -> AbortController = "() => new AbortController()"

extern "js" fn abort_controller_signal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.signal"

extern "js" fn abort_controller_abort_ffi(obj: JsValue, reason: JsValue) -> Unit = "(obj, reason) => obj.abort(reason)"