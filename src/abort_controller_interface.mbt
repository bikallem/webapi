// Do not edit. This file is generated.
// MoonBit type: AbortController
// Specifications: dom.idl

///|
/// [AbortController](https://developer.mozilla.org/en-US/docs/Web/API/AbortController)
#external
pub type AbortController

///|
pub impl TJsValue for AbortController with to_js(self : AbortController) -> JsValue = "%identity"

///|
pub impl FromJsAny for AbortController with from_js_any(value : JsAny) -> AbortController = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TAbortController] AbortController::into(self : AbortController) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TAbortController] AbortController::unsafe_into(
  self : AbortController,
) -> T = "%identity"

///|
pub impl HasConstructor for AbortController with constructor_name() {
  "AbortController"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TAbortController + HasConstructor] AbortController::try_into(
  self : AbortController,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TAbortController for AbortController

///|
pub fn AbortController::new() -> AbortController {
  abort_controller_new_ffi()
}

///|
/// [AbortController](https://developer.mozilla.org/en-US/docs/Web/API/AbortController) interface.
pub trait TAbortController: TJsValue {
  signal(self : Self) -> AbortSignal = _
  abort(self : Self, reason? : JsValue) -> Unit = _
}

///|
/// [AbortController.signal](https://developer.mozilla.org/en-US/docs/Web/API/AbortController/signal)
impl TAbortController with signal(self : Self) -> AbortSignal {
  abort_controller_signal_ffi(TJsValue::to_js(self))
}

///|
/// [AbortController.abort](https://developer.mozilla.org/en-US/docs/Web/API/AbortController/abort)
impl TAbortController with abort(self : Self, reason? : JsValue) -> Unit {
  abort_controller_abort_ffi(TJsValue::to_js(self), opt_to_js(reason))
}

///|
#cfg(target="js")
extern "js" fn abort_controller_new_ffi() -> AbortController = "() => new AbortController()"

///|
#cfg(target="js")
extern "js" fn abort_controller_signal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="js")
fn abort_controller_signal_ffi(obj : JsValue) -> AbortSignal {
  abort_controller_signal_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn abort_controller_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> Unit = "(obj, reason) => obj.abort(reason)"

///|
#cfg(target="wasm-gc")
fn abort_controller_new_ffi() -> AbortController = "webapi_AbortController" "new"

///|
#cfg(target="wasm-gc")
fn abort_controller_signal_ffi(obj : JsValue) -> AbortSignal = "webapi_AbortController" "get_signal"

///|
#cfg(target="wasm-gc")
fn abort_controller_abort_ffi(obj : JsValue, reason : JsValue) -> Unit = "webapi_AbortController" "abort"
