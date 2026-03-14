// Do not edit. This file is generated.
// MoonBit type: ReadableByteStreamController
// Specifications: streams.idl

///|
/// [ReadableByteStreamController](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController)
#external
pub type ReadableByteStreamController

///|
pub impl TJsValue for ReadableByteStreamController with to_js(
  self : ReadableByteStreamController,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableByteStreamController with from_js_any(
  value : JsAny,
) -> ReadableByteStreamController = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TReadableByteStreamController] ReadableByteStreamController::into(
  self : ReadableByteStreamController,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TReadableByteStreamController] ReadableByteStreamController::unsafe_into(
  self : ReadableByteStreamController,
) -> T = "%identity"

///|
pub impl HasConstructor for ReadableByteStreamController with constructor_name() {
  "ReadableByteStreamController"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TReadableByteStreamController + HasConstructor] ReadableByteStreamController::try_into(
  self : ReadableByteStreamController,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TReadableByteStreamController for ReadableByteStreamController

///|
/// [ReadableByteStreamController](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController) interface.
pub trait TReadableByteStreamController: TJsValue {
  byob_request(self : Self) -> ReadableStreamBYOBRequest = _
  desired_size(self : Self) -> Double = _
  close(self : Self) -> Unit = _
  enqueue(self : Self, chunk : &TArrayBufferView) -> Unit = _
  error(self : Self, e? : JsValue) -> Unit = _
}

///|
/// [ReadableByteStreamController.byobRequest](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/byobRequest)
impl TReadableByteStreamController with byob_request(self : Self) -> ReadableStreamBYOBRequest {
  readable_byte_stream_controller_byob_request_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableByteStreamController.desiredSize](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/desiredSize)
impl TReadableByteStreamController with desired_size(self : Self) -> Double {
  readable_byte_stream_controller_desired_size_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableByteStreamController.close](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/close)
impl TReadableByteStreamController with close(self : Self) -> Unit {
  readable_byte_stream_controller_close_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableByteStreamController.enqueue](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/enqueue)
impl TReadableByteStreamController with enqueue(
  self : Self,
  chunk : &TArrayBufferView,
) -> Unit {
  readable_byte_stream_controller_enqueue_ffi(
    TJsValue::to_js(self),
    chunk.to_js(),
  )
}

///|
/// [ReadableByteStreamController.error](https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController/error)
impl TReadableByteStreamController with error(self : Self, e? : JsValue) -> Unit {
  readable_byte_stream_controller_error_ffi(TJsValue::to_js(self), opt_to_js(e))
}

///|
#cfg(target="js")
extern "js" fn readable_byte_stream_controller_byob_request_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.byobRequest"

///|
#cfg(target="js")
fn readable_byte_stream_controller_byob_request_ffi(
  obj : JsValue,
) -> ReadableStreamBYOBRequest {
  readable_byte_stream_controller_byob_request_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_byte_stream_controller_desired_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.desiredSize"

///|
#cfg(target="js")
fn readable_byte_stream_controller_desired_size_ffi(obj : JsValue) -> Double {
  readable_byte_stream_controller_desired_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_byte_stream_controller_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
#cfg(target="js")
extern "js" fn readable_byte_stream_controller_enqueue_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> Unit = "(obj, chunk) => obj.enqueue(chunk)"

///|
#cfg(target="js")
extern "js" fn readable_byte_stream_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "(obj, e) => obj.error(e)"

///|
#cfg(target="wasm-gc")
fn readable_byte_stream_controller_byob_request_ffi(
  obj : JsValue,
) -> ReadableStreamBYOBRequest = "webapi_ReadableByteStreamController" "get_byobRequest"

///|
#cfg(target="wasm-gc")
fn readable_byte_stream_controller_desired_size_ffi(obj : JsValue) -> Double = "webapi_ReadableByteStreamController" "get_desiredSize"

///|
#cfg(target="wasm-gc")
fn readable_byte_stream_controller_close_ffi(obj : JsValue) -> Unit = "webapi_ReadableByteStreamController" "close"

///|
#cfg(target="wasm-gc")
fn readable_byte_stream_controller_enqueue_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> Unit = "webapi_ReadableByteStreamController" "enqueue"

///|
#cfg(target="wasm-gc")
fn readable_byte_stream_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "webapi_ReadableByteStreamController" "error"
