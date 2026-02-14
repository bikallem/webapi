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
pub fn[T : TTransformStreamDefaultController] TransformStreamDefaultController::into(
  self : TransformStreamDefaultController,
) -> T = "%identity"

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
