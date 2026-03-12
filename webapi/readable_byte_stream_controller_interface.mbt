// Do not edit. This file is generated.
// MoonBit type: ReadableByteStreamController
// Specifications: streams.idl

/// [ReadableByteStreamController](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController)
#external
pub type ReadableByteStreamController

pub impl TJsValue for ReadableByteStreamController with to_js(self: ReadableByteStreamController) -> JsValue = "%identity"

pub impl FromJsAny for ReadableByteStreamController with from_js_any(value : JsAny) -> ReadableByteStreamController = "%identity"

pub fn[T: TReadableByteStreamController] ReadableByteStreamController::into(self : ReadableByteStreamController) -> T = "%identity"

pub impl TReadableByteStreamController for ReadableByteStreamController

/// [ReadableByteStreamController](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController) interface.
pub trait TReadableByteStreamController: TJsValue {
  byob_request(self : Self) -> ReadableStreamBYOBRequest = _
  desired_size(self : Self) -> Double = _
  close(self : Self) -> Unit = _
  enqueue(self : Self, chunk : &TArrayBufferView) -> Unit = _
  error(self : Self, e? : JsValue) -> Unit = _
}

/// [ReadableByteStreamController.byobRequest](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/byobRequest)
impl TReadableByteStreamController with byob_request(self : Self) -> ReadableStreamBYOBRequest {
  readable_byte_stream_controller_byob_request_ffi(TJsValue::to_js(self))
}

/// [ReadableByteStreamController.desiredSize](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/desiredSize)
impl TReadableByteStreamController with desired_size(self : Self) -> Double {
  readable_byte_stream_controller_desired_size_ffi(TJsValue::to_js(self))
}

/// [ReadableByteStreamController.close](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/close)
impl TReadableByteStreamController with close(self : Self) -> Unit {
  readable_byte_stream_controller_close_ffi(TJsValue::to_js(self))
}

/// [ReadableByteStreamController.enqueue](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/enqueue)
impl TReadableByteStreamController with enqueue(self : Self, 
chunk : &TArrayBufferView) -> Unit {
  readable_byte_stream_controller_enqueue_ffi(TJsValue::to_js(self), chunk.to_js())
}

/// [ReadableByteStreamController.error](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/error)
impl TReadableByteStreamController with error(self : Self, 
e? : JsValue) -> Unit {
  readable_byte_stream_controller_error_ffi(TJsValue::to_js(self), opt_to_js(e))
}