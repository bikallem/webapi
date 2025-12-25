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
  aborted(self : Self) -> Bool = _
  reason(self : Self) -> JsValue = _
  throw_if_aborted(self : Self) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
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
