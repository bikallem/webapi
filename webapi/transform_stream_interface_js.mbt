///|
extern "js" fn transform_stream_new_ffi(
  transformer : JsValue,
  writable_strategy : JsValue,
  readable_strategy : JsValue,
) -> TransformStream = "(transformer, writable_strategy, readable_strategy) => new TransformStream(transformer, writable_strategy, readable_strategy)"

///|
extern "js" fn transform_stream_readable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readable"

///|
fn transform_stream_readable_ffi(obj : JsValue) -> ReadableStream {
  transform_stream_readable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn transform_stream_writable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.writable"

///|
fn transform_stream_writable_ffi(obj : JsValue) -> WritableStream {
  transform_stream_writable_ffi_js(obj).unsafe_cast()
}
