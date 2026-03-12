// Do not edit. This file is generated.
// MoonBit type: WritableStreamDefaultController
// Specifications: streams.idl

///|
/// [WritableStreamDefaultController](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultController)
#external
pub type WritableStreamDefaultController

///|
pub impl TJsValue for WritableStreamDefaultController with to_js(
  self : WritableStreamDefaultController,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for WritableStreamDefaultController with from_js_any(
  value : JsAny,
) -> WritableStreamDefaultController = "%identity"

///|
pub fn[T : TWritableStreamDefaultController] WritableStreamDefaultController::into(
  self : WritableStreamDefaultController,
) -> T = "%identity"

///|
pub impl TWritableStreamDefaultController for WritableStreamDefaultController

///|
/// [WritableStreamDefaultController](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultController) interface.
pub trait TWritableStreamDefaultController: TJsValue {
  signal(self : Self) -> AbortSignal = _
  error(self : Self, e? : JsValue) -> Unit = _
}

///|
/// [WritableStreamDefaultController.signal](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultController/signal)
impl TWritableStreamDefaultController with signal(self : Self) -> AbortSignal {
  writable_stream_default_controller_signal_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStreamDefaultController.error](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultController/error)
impl TWritableStreamDefaultController with error(self : Self, e? : JsValue) -> Unit {
  writable_stream_default_controller_error_ffi(
    TJsValue::to_js(self),
    opt_to_js(e),
  )
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_controller_signal_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="js")
fn writable_stream_default_controller_signal_ffi(obj : JsValue) -> AbortSignal {
  writable_stream_default_controller_signal_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "(obj, e) => obj.error(e)"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_controller_signal_ffi(obj : JsValue) -> AbortSignal = "webapi_WritableStreamDefaultController" "get_signal"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "webapi_WritableStreamDefaultController" "error"
