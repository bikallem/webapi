// Auto-generated MoonBit bindings for AbortController interface
// Do not edit manually

#external
pub type AbortController

pub impl TJsValue for AbortController with to_js(self: AbortController) -> JsValue = "%identity"


pub fn[T: TAbortController] AbortController::into(self : AbortController) -> T = "%identity"
pub impl TAbortController for AbortController

pub fn AbortController::new() -> AbortController = "webapi_AbortController" "new"

pub trait TAbortController: TJSValue {
  signal(self: Self) -> &TAbortSignal = _
  abort(self: Self, reason? : JsValue) -> Unit = _
}

///|
fn abort_controller_signal_ffi(obj : JsValue) -> JsValue = "webapi_AbortController" "signal"

///|
impl TAbortController with signal(self : Self) -> &TAbortSignal {
  abort_controller_signal_ffi(self.to_js()).unsafe_cast()
}

///|
fn abort_controller_abort_ffi(obj : JsValue, reason : JsValue) -> Unit = "webapi_AbortController" "abort"

///|
impl TAbortController with abort(self : Self, reason? : JsValue) -> Unit {
  abort_controller_abort_ffi(self.to_js(), TJsValue::to_js(reason))
}