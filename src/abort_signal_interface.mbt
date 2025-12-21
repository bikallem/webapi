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
  throw_if_aborted(self : Self) -> Unit = _
}

///|
extern "js" fn abort_signal_throw_if_aborted_ffi(obj : JsValue) -> Unit = "(obj) => obj.throwIfAborted(obj)"

///|
impl TAbortSignal with throw_if_aborted(self : Self) -> Unit {
  abort_signal_throw_if_aborted_ffi(TJsValue::to_js(self))
}
