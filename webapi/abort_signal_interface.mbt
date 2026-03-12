// Do not edit. This file is generated.
// MoonBit type: AbortSignal
// Specifications: dom.idl

/// [AbortSignal](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal)
#external
pub type AbortSignal

pub impl TJsValue for AbortSignal with to_js(self: AbortSignal) -> JsValue = "%identity"

pub impl FromJsAny for AbortSignal with from_js_any(value : JsAny) -> AbortSignal = "%identity"

pub fn[T: TAbortSignal] AbortSignal::into(self : AbortSignal) -> T = "%identity"

pub impl TAbortSignal for AbortSignal

pub impl TEventTarget for AbortSignal

/// [AbortSignal](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal) interface.
pub trait TAbortSignal: TEventTarget {
  aborted(self : Self) -> Bool = _
  reason(self : Self) -> JsValue = _
  throw_if_aborted(self : Self) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
}

/// [AbortSignal.abort](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/abort)
pub fn AbortSignal::abort(reason? : JsValue) -> AbortSignal {
  abort_signal_abort_ffi(opt_to_js(reason))
}

/// [AbortSignal.timeout](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/timeout)
pub fn AbortSignal::timeout(milliseconds : UInt64) -> AbortSignal {
  abort_signal_timeout_ffi(TJsValue::to_js(milliseconds))
}

/// [AbortSignal.any](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/any)
pub fn AbortSignal::any(signals : Array[AbortSignal]) -> AbortSignal {
  abort_signal_any_ffi(TJsValue::to_js(signals))
}

/// [AbortSignal.aborted](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/aborted)
impl TAbortSignal with aborted(self : Self) -> Bool {
  abort_signal_aborted_ffi(TJsValue::to_js(self))
}

/// [AbortSignal.reason](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/reason)
impl TAbortSignal with reason(self : Self) -> JsValue {
  abort_signal_reason_ffi(TJsValue::to_js(self))
}

/// [AbortSignal.throwIfAborted](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/throwIfAborted)
impl TAbortSignal with throw_if_aborted(self : Self) -> Unit {
  abort_signal_throw_if_aborted_ffi(TJsValue::to_js(self))
}

/// [AbortSignal.onabort](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/onabort)
impl TAbortSignal with onabort(self : Self) -> EventHandler {
  abort_signal_onabort_ffi(TJsValue::to_js(self))
}

/// [AbortSignal.onabort](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/onabort)
impl TAbortSignal with set_onabort(self : Self, 
onabort : (Event) -> JsValue) -> Unit {
  abort_signal_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onabort)))
}