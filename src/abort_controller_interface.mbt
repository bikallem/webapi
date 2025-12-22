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
  abort(self : Self, reason? : JsValue) -> Unit = _
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
