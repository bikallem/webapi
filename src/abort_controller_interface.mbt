///|
#external
pub type AbortController

///|
pub impl TJsValue for AbortController with to_js(self : AbortController) -> JsValue = "%identity"

///|
pub fn[T : TAbortController] AbortController::into(self : AbortController) -> T = "%identity"

///|
pub impl TAbortController for AbortController

///|
extern "js" fn abort_controller_new_ffi() -> AbortController = "() => new AbortController()"

///|
pub fn AbortController::new() -> AbortController {
  abort_controller_new_ffi()
}

///|
pub trait TAbortController: TJsValue {
  signal(self : Self) -> AbortSignal = _
  abort(self : Self, reason? : JsValue) -> Unit = _
}

///|
extern "js" fn abort_controller_signal_ffi(obj : JsValue) -> AbortSignal = "(obj) => obj.signal"

///|
impl TAbortController with signal(self : Self) -> AbortSignal {
  abort_controller_signal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn abort_controller_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> Unit = "(obj, reason) => obj.abort(obj, reason)"

///|
impl TAbortController with abort(self : Self, reason? : JsValue) -> Unit {
  abort_controller_abort_ffi(TJsValue::to_js(self), opt_to_js(reason))
}
