///|
extern "js" fn abort_signal_abort_ffi(reason : JsValue) -> JsValue = "(reason) => AbortSignal.abort(reason)"

///|
extern "js" fn abort_signal_timeout_ffi(milliseconds : JsValue) -> JsValue = "(milliseconds) => AbortSignal.timeout(milliseconds)"

///|
extern "js" fn abort_signal_any_ffi(signals : JsValue) -> JsValue = "(signals) => AbortSignal.any(signals)"

///|
extern "js" fn abort_signal_aborted_ffi(obj : JsValue) -> JsValue = "(obj) => obj.aborted"

///|
extern "js" fn abort_signal_reason_ffi(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
extern "js" fn abort_signal_throw_if_aborted_ffi(obj : JsValue) -> Unit = "(obj) => obj.throwIfAborted()"

///|
extern "js" fn abort_signal_onabort_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
extern "js" fn abort_signal_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"
