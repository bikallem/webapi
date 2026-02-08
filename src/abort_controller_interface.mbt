// Do not edit. This file is generated.
// MoonBit type: AbortController
// Specifications: dom.idl

/// [AbortController](https://developer.mozilla.org/en-US/docs/Web/API/AbortController)
#external
pub type AbortController

pub impl TJsValue for AbortController with to_js(self: AbortController) -> JsValue = "%identity"

pub fn[T: TAbortController] AbortController::into(self : AbortController) -> T = "%identity"

pub impl TAbortController for AbortController

pub fn AbortController::new() -> AbortController {
  abort_controller_new_ffi()
}

/// [AbortController](https://developer.mozilla.org/en-US/docs/Web/API/AbortController) interface.
pub trait TAbortController: TJsValue {
  signal(self : Self) -> AbortSignal = _
  abort(self : Self, reason? : JsValue) -> Unit = _
}

/// [AbortController.signal](https://developer.mozilla.org/en-US/docs/Web/API/AbortController/signal)
impl TAbortController with signal(self : Self) -> AbortSignal {
  abort_controller_signal_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [AbortController.abort](https://developer.mozilla.org/en-US/docs/Web/API/AbortController/abort)
impl TAbortController with abort(self : Self, 
reason? : JsValue) -> Unit {
  abort_controller_abort_ffi(TJsValue::to_js(self), opt_to_js(reason))
}