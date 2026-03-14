// Do not edit. This file is generated.
// MoonBit type: TransformStreamDefaultController
// Specifications: streams.idl

///|
/// [TransformStreamDefaultController](https://developer.mozilla.org/en-US/docs/Web/API/TransformStreamDefaultController)
#external
pub type TransformStreamDefaultController

///|
pub impl TJsValue for TransformStreamDefaultController with to_js(
  self : TransformStreamDefaultController,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for TransformStreamDefaultController with from_js_any(
  value : JsAny,
) -> TransformStreamDefaultController = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTransformStreamDefaultController] TransformStreamDefaultController::into(
  self : TransformStreamDefaultController,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTransformStreamDefaultController] TransformStreamDefaultController::unsafe_into(
  self : TransformStreamDefaultController,
) -> T = "%identity"

///|
pub impl HasConstructor for TransformStreamDefaultController with constructor_name() {
  "TransformStreamDefaultController"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTransformStreamDefaultController + HasConstructor] TransformStreamDefaultController::try_into(
  self : TransformStreamDefaultController,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TTransformStreamDefaultController for TransformStreamDefaultController

///|
/// [TransformStreamDefaultController](https://developer.mozilla.org/en-US/docs/Web/API/TransformStreamDefaultController) interface.
pub trait TTransformStreamDefaultController: TJsValue {
  desired_size(self : Self) -> Double = _
  enqueue(self : Self, chunk? : JsValue) -> Unit = _
  error(self : Self, reason? : JsValue) -> Unit = _
  terminate(self : Self) -> Unit = _
}

///|
/// [TransformStreamDefaultController.desiredSize](https://developer.mozilla.org/en-US/docs/Web/API/TransformStreamDefaultController/desiredSize)
impl TTransformStreamDefaultController with desired_size(self : Self) -> Double {
  transform_stream_default_controller_desired_size_ffi(TJsValue::to_js(self))
}

///|
/// [TransformStreamDefaultController.enqueue](https://developer.mozilla.org/en-US/docs/Web/API/TransformStreamDefaultController/enqueue)
impl TTransformStreamDefaultController with enqueue(
  self : Self,
  chunk? : JsValue,
) -> Unit {
  transform_stream_default_controller_enqueue_ffi(
    TJsValue::to_js(self),
    opt_to_js(chunk),
  )
}

///|
/// [TransformStreamDefaultController.error](https://developer.mozilla.org/en-US/docs/Web/API/TransformStreamDefaultController/error)
impl TTransformStreamDefaultController with error(
  self : Self,
  reason? : JsValue,
) -> Unit {
  transform_stream_default_controller_error_ffi(
    TJsValue::to_js(self),
    opt_to_js(reason),
  )
}

///|
/// [TransformStreamDefaultController.terminate](https://developer.mozilla.org/en-US/docs/Web/API/TransformStreamDefaultController/terminate)
impl TTransformStreamDefaultController with terminate(self : Self) -> Unit {
  transform_stream_default_controller_terminate_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn transform_stream_default_controller_desired_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.desiredSize"

///|
#cfg(target="js")
fn transform_stream_default_controller_desired_size_ffi(
  obj : JsValue,
) -> Double {
  transform_stream_default_controller_desired_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn transform_stream_default_controller_enqueue_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> Unit = "(obj, chunk) => obj.enqueue(chunk)"

///|
#cfg(target="js")
extern "js" fn transform_stream_default_controller_error_ffi(
  obj : JsValue,
  reason : JsValue,
) -> Unit = "(obj, reason) => obj.error(reason)"

///|
#cfg(target="js")
extern "js" fn transform_stream_default_controller_terminate_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.terminate()"

///|
#cfg(target="wasm-gc")
fn transform_stream_default_controller_desired_size_ffi(
  obj : JsValue,
) -> Double = "webapi_TransformStreamDefaultController" "get_desiredSize"

///|
#cfg(target="wasm-gc")
fn transform_stream_default_controller_enqueue_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> Unit = "webapi_TransformStreamDefaultController" "enqueue"

///|
#cfg(target="wasm-gc")
fn transform_stream_default_controller_error_ffi(
  obj : JsValue,
  reason : JsValue,
) -> Unit = "webapi_TransformStreamDefaultController" "error"

///|
#cfg(target="wasm-gc")
fn transform_stream_default_controller_terminate_ffi(obj : JsValue) -> Unit = "webapi_TransformStreamDefaultController" "terminate"
