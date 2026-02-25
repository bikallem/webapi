///|
fn transform_stream_default_controller_desired_size_ffi(
  obj : JsValue,
) -> Double = "webapi_TransformStreamDefaultController" "get_desiredSize"

///|
fn transform_stream_default_controller_enqueue_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> Unit = "webapi_TransformStreamDefaultController" "enqueue"

///|
fn transform_stream_default_controller_error_ffi(
  obj : JsValue,
  reason : JsValue,
) -> Unit = "webapi_TransformStreamDefaultController" "error"

///|
fn transform_stream_default_controller_terminate_ffi(obj : JsValue) -> Unit = "webapi_TransformStreamDefaultController" "terminate"
