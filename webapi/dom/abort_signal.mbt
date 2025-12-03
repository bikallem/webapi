// Auto-generated MoonBit bindings for AbortSignal

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=*]
// interface AbortSignal : EventTarget {
//   [NewObject] static AbortSignal abort(optional any reason);
//   [Exposed=(Window,Worker), NewObject] static AbortSignal timeout([EnforceRange] unsigned long long milliseconds);
//   [NewObject] static AbortSignal _any(sequence<AbortSignal> signals);
// 
//   readonly attribute boolean aborted;
//   readonly attribute any reason;
//   undefined throwIfAborted();
// 
//   attribute EventHandler onabort;
// };

///|
#external
pub type AbortSignal

///|
pub trait TAbortSignal: TJsValue + TEventTarget {
  aborted(self : Self) -> Bool = _
  reason(self : Self) -> JsValue = _
  onabort(self : Self) -> JsValue = _
  set_onabort(self : Self, value : JsValue) -> Unit = _
  throw_if_aborted(self : Self) -> Unit = _
}

///|
pub impl TEventTarget for AbortSignal

///|
pub impl TAbortSignal for AbortSignal

///|
pub impl TJsValue for AbortSignal with to_js(self : AbortSignal) -> JsValue = "%identity"

///|
fn abort_signal_abort_ffi(reason : JsValue) -> JsValue = "webapi_AbortSignal" "abort"

///|
pub fn AbortSignal::abort(reason? : JsValue) -> JsValue {
  let reason_js = opt_to_js(reason)
  abort_signal_abort_ffi(reason_js)
}

///|
pub fn AbortSignal::timeout(milliseconds : Int64) -> JsValue = "webapi_AbortSignal" "timeout"

///|
pub fn AbortSignal::any(signals : Array[AbortSignal]) -> JsValue = "webapi_AbortSignal" "any"

///|
fn abort_signal_throw_if_aborted_ffi(obj : JsValue) -> Unit = "webapi_AbortSignal" "throwIfAborted"

///|
impl TAbortSignal with throw_if_aborted(self : Self) -> Unit {
  abort_signal_throw_if_aborted_ffi(TJsValue::to_js(self))
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
impl TAbortSignal with onabort(self : Self) -> JsValue {
  abort_signal_onabort_ffi(self.to_js())
}

///|
fn abort_signal_set_onabort_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_AbortSignal" "set_onabort"

///|
impl TAbortSignal with set_onabort(self : Self, value : JsValue) -> Unit {
  abort_signal_set_onabort_ffi(self.to_js(), value)
}