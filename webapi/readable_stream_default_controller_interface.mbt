// Do not edit. This file is generated.
// MoonBit type: ReadableStreamDefaultController
// Specifications: streams.idl

/// [ReadableStreamDefaultController](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController)
#external
pub type ReadableStreamDefaultController

pub impl TJsValue for ReadableStreamDefaultController with to_js(self: ReadableStreamDefaultController) -> JsValue = "%identity"

pub impl FromJsAny for ReadableStreamDefaultController with from_js_any(value : JsAny) -> ReadableStreamDefaultController = "%identity"

pub fn[T: TReadableStreamDefaultController] ReadableStreamDefaultController::into(self : ReadableStreamDefaultController) -> T = "%identity"

pub impl TReadableStreamDefaultController for ReadableStreamDefaultController

/// [ReadableStreamDefaultController](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController) interface.
pub trait TReadableStreamDefaultController: TJsValue {
  desired_size(self : Self) -> Double = _
  close(self : Self) -> Unit = _
  enqueue(self : Self, chunk? : JsValue) -> Unit = _
  error(self : Self, e? : JsValue) -> Unit = _
}

/// [ReadableStreamDefaultController.desiredSize](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController/desiredSize)
impl TReadableStreamDefaultController with desired_size(self : Self) -> Double {
  readable_stream_default_controller_desired_size_ffi(TJsValue::to_js(self))
}

/// [ReadableStreamDefaultController.close](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController/close)
impl TReadableStreamDefaultController with close(self : Self) -> Unit {
  readable_stream_default_controller_close_ffi(TJsValue::to_js(self))
}

/// [ReadableStreamDefaultController.enqueue](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController/enqueue)
impl TReadableStreamDefaultController with enqueue(self : Self, 
chunk? : JsValue) -> Unit {
  readable_stream_default_controller_enqueue_ffi(TJsValue::to_js(self), opt_to_js(chunk))
}

/// [ReadableStreamDefaultController.error](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController/error)
impl TReadableStreamDefaultController with error(self : Self, 
e? : JsValue) -> Unit {
  readable_stream_default_controller_error_ffi(TJsValue::to_js(self), opt_to_js(e))
}