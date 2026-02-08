fn abort_signal_abort_ffi(reason: JsValue) -> JsValue = "webapi_AbortSignal" "abort"

fn abort_signal_timeout_ffi(milliseconds: JsValue) -> JsValue = "webapi_AbortSignal" "timeout"

fn abort_signal_any_ffi(signals: JsValue) -> JsValue = "webapi_AbortSignal" "any"

fn abort_signal_aborted_ffi(obj: JsValue) -> JsValue = "webapi_AbortSignal" "get_aborted"

fn abort_signal_reason_ffi(obj: JsValue) -> JsValue = "webapi_AbortSignal" "get_reason"

fn abort_signal_throw_if_aborted_ffi(obj: JsValue) -> Unit = "webapi_AbortSignal" "throwIfAborted"

fn abort_signal_onabort_ffi(obj: JsValue) -> JsValue = "webapi_AbortSignal" "get_onabort"

fn abort_signal_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "webapi_AbortSignal" "set_onabort"