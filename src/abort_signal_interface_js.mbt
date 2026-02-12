///|
extern "js" fn abort_signal_abort_ffi_js(reason : JsValue) -> JsValue = "(reason) => AbortSignal.abort(reason)"

///|
fn abort_signal_abort_ffi(reason : JsValue) -> AbortSignal {
  abort_signal_abort_ffi_js(reason).unsafe_cast()
}

///|
extern "js" fn abort_signal_timeout_ffi_js(milliseconds : JsValue) -> JsValue = "(milliseconds) => AbortSignal.timeout(milliseconds)"

///|
fn abort_signal_timeout_ffi(milliseconds : JsValue) -> AbortSignal {
  abort_signal_timeout_ffi_js(milliseconds).unsafe_cast()
}

///|
extern "js" fn abort_signal_any_ffi_js(signals : JsValue) -> JsValue = "(signals) => AbortSignal.any(signals)"

///|
fn abort_signal_any_ffi(signals : JsValue) -> AbortSignal {
  abort_signal_any_ffi_js(signals).unsafe_cast()
}

///|
extern "js" fn abort_signal_aborted_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.aborted"

///|
fn abort_signal_aborted_ffi(obj : JsValue) -> Bool {
  abort_signal_aborted_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abort_signal_reason_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
fn abort_signal_reason_ffi(obj : JsValue) -> JsValue {
  abort_signal_reason_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abort_signal_throw_if_aborted_ffi(obj : JsValue) -> Unit = "(obj) => obj.throwIfAborted()"

///|
extern "js" fn abort_signal_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn abort_signal_onabort_ffi(obj : JsValue) -> EventHandlerNonNull {
  abort_signal_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abort_signal_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"
