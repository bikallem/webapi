///|
fn transform_stream_new_ffi(
  transformer : JsValue,
  writable_strategy : JsValue,
  readable_strategy : JsValue,
) -> TransformStream = "webapi_TransformStream" "new"

///|
fn transform_stream_readable_ffi(obj : JsValue) -> ReadableStream = "webapi_TransformStream" "get_readable"

///|
fn transform_stream_writable_ffi(obj : JsValue) -> WritableStream = "webapi_TransformStream" "get_writable"
