///|
#external
pub type AbortSignal

///|
pub impl TJsValue for AbortSignal with to_js(self : AbortSignal) -> JsValue = "%identity"

///|
pub fn[T : TAbortSignal] AbortSignal::into(self : AbortSignal) -> T = "%identity"

///|
pub impl TAbortSignal for AbortSignal

///|
pub impl TEventTarget for AbortSignal

///|
pub trait TAbortSignal: TEventTarget {
  abort(reason? : JsValue) -> AbortSignal = _
  timeout(milliseconds : UInt64) -> AbortSignal = _
  any(signals : Array[AbortSignal]) -> AbortSignal = _
  aborted(self : Self) -> Bool = _
  reason(self : Self) -> JsValue = _
  throw_if_aborted(self : Self) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
}

///|
extern "js" fn abort_signal_abort_ffi(reason : JsValue) -> AbortSignal = "(reason) => { AbortSignal.abort(reason) }"

///|
impl TAbortSignal with abort(reason? : JsValue) -> AbortSignal {
  abort_signal_abort_ffi(opt_to_js(reason))
}

///|
extern "js" fn abort_signal_timeout_ffi(milliseconds : JsValue) -> AbortSignal = "(milliseconds) => { AbortSignal.timeout(milliseconds) }"

///|
impl TAbortSignal with timeout(milliseconds : UInt64) -> AbortSignal {
  abort_signal_timeout_ffi(TJsValue::to_js(milliseconds))
}

///|
extern "js" fn abort_signal_any_ffi(signals : JsValue) -> AbortSignal = "(signals) => { AbortSignal.any(signals) }"

///|
impl TAbortSignal with any(signals : Array[AbortSignal]) -> AbortSignal {
  abort_signal_any_ffi(TJsValue::to_js(signals))
}

///|
extern "js" fn abort_signal_aborted_ffi(obj : JsValue) -> Bool = "(obj) => obj.aborted"

///|
impl TAbortSignal with aborted(self : Self) -> Bool {
  abort_signal_aborted_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn abort_signal_reason_ffi(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
impl TAbortSignal with reason(self : Self) -> JsValue {
  abort_signal_reason_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn abort_signal_throw_if_aborted_ffi(obj : JsValue) -> Unit = "(obj) => obj.throwIfAborted(obj)"

///|
impl TAbortSignal with throw_if_aborted(self : Self) -> Unit {
  abort_signal_throw_if_aborted_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn abort_signal_onabort_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onabort"

///|
impl TAbortSignal with onabort(self : Self) -> EventHandler {
  abort_signal_onabort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn abort_signal_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
impl TAbortSignal with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  abort_signal_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}
