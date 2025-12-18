// Auto-generated MoonBit bindings for AbortSignal interface
// Do not edit manually

#external
pub type AbortSignal

pub impl TJsValue for AbortSignal with to_js(self: AbortSignal) -> JsValue = "%identity"


pub fn[T: TAbortSignal] AbortSignal::into(self : AbortSignal) -> T = "%identity"
pub impl TAbortSignal for AbortSignal

pub trait TAbortSignal: TJsValue + TTEventTarget {
  abort(reason? : JsValue) -> &TAbortSignal = _
  timeout(milliseconds : UInt64) -> &TAbortSignal = _
  _any(signals : Array[&TAbortSignal]) -> &TAbortSignal = _
  aborted(self: Self) -> Bool = _
  reason(self: Self) -> JsValue = _
  throw_if_aborted(self: Self) -> Unit = _
  onabort(self: Self) -> EventHandler = _
  set_onabort(self: Self, value : EventHandler) -> Unit = _
}

///|
fn abort_signal_aborted_ffi(obj : JsValue) -> Bool = "webapi_AbortSignal" "aborted"

///|
impl TAbortSignal with aborted(self : Self) -> Bool {
  abort_signal_aborted_ffi(self.to_js())
}

///|
fn abort_signal_reason_ffi(obj : JsValue) -> JsValue = "webapi_AbortSignal" "reason"

///|
impl TAbortSignal with reason(self : Self) -> JsValue {
  abort_signal_reason_ffi(self.to_js())
}

///|
fn abort_signal_onabort_ffi(obj : JsValue) -> JsValue = "webapi_AbortSignal" "onabort"

///|
impl TAbortSignal with onabort(self : Self) -> EventHandler {
  abort_signal_onabort_ffi(self.to_js()).unsafe_cast()
}

///|
fn abort_signal_set_onabort_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_AbortSignal" "set_onabort"

///|
impl TAbortSignal with set_onabort(self : Self, value : EventHandler) -> Unit {
  abort_signal_set_onabort_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn abort_signal_abort_ffi(reason : JsValue) -> JsValue = "webapi_AbortSignal" "abort"

///|
impl TAbortSignal with abort(reason? : JsValue) -> &TAbortSignal {
  abort_signal_abort_ffi(TJsValue::to_js(reason)).unsafe_cast()
}

///|
fn abort_signal_timeout_ffi(milliseconds : JsValue) -> JsValue = "webapi_AbortSignal" "timeout"

///|
impl TAbortSignal with timeout(milliseconds : UInt64) -> &TAbortSignal {
  abort_signal_timeout_ffi(TJsValue::to_js(milliseconds)).unsafe_cast()
}

///|
fn abort_signal__any_ffi(signals : JsValue) -> JsValue = "webapi_AbortSignal" "_any"

///|
impl TAbortSignal with _any(signals : Array[&TAbortSignal]) -> &TAbortSignal {
  abort_signal__any_ffi(TJsValue::to_js(signals)).unsafe_cast()
}

///|
fn abort_signal_throw_if_aborted_ffi(obj : JsValue) -> Unit = "webapi_AbortSignal" "throwIfAborted"

///|
impl TAbortSignal with throw_if_aborted(self : Self) -> Unit {
  abort_signal_throw_if_aborted_ffi(self.to_js())
}