// Do not edit. This file is generated.
// MoonBit type: TransformStream
// Specifications: streams.idl

///|
/// [TransformStream](https://developer.mozilla.org/en-US/docs/Web/API/TransformStream)
#external
pub type TransformStream

///|
pub impl TJsValue for TransformStream with to_js(self : TransformStream) -> JsValue = "%identity"

///|
pub impl FromJsAny for TransformStream with from_js_any(value : JsAny) -> TransformStream = "%identity"

///|
pub fn[T : TTransformStream] TransformStream::into(self : TransformStream) -> T = "%identity"

///|
pub impl TTransformStream for TransformStream

///|
pub fn TransformStream::new(
  transformer? : JsValue,
  writable_strategy? : QueuingStrategy,
  readable_strategy? : QueuingStrategy,
) -> TransformStream {
  transform_stream_new_ffi(
    opt_to_js(transformer),
    opt_to_js(writable_strategy),
    opt_to_js(readable_strategy),
  )
}

///|
/// [TransformStream](https://developer.mozilla.org/en-US/docs/Web/API/TransformStream) interface.
pub trait TTransformStream: TJsValue {
  readable(self : Self) -> ReadableStream = _
  writable(self : Self) -> WritableStream = _
}

///|
/// [TransformStream.readable](https://developer.mozilla.org/en-US/docs/Web/API/TransformStream/readable)
impl TTransformStream with readable(self : Self) -> ReadableStream {
  transform_stream_readable_ffi(TJsValue::to_js(self))
}

///|
/// [TransformStream.writable](https://developer.mozilla.org/en-US/docs/Web/API/TransformStream/writable)
impl TTransformStream with writable(self : Self) -> WritableStream {
  transform_stream_writable_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn transform_stream_new_ffi(
  transformer : JsValue,
  writable_strategy : JsValue,
  readable_strategy : JsValue,
) -> TransformStream = "(transformer, writable_strategy, readable_strategy) => new TransformStream(transformer, writable_strategy, readable_strategy)"

///|
#cfg(target="js")
extern "js" fn transform_stream_readable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readable"

///|
#cfg(target="js")
fn transform_stream_readable_ffi(obj : JsValue) -> ReadableStream {
  transform_stream_readable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn transform_stream_writable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.writable"

///|
#cfg(target="js")
fn transform_stream_writable_ffi(obj : JsValue) -> WritableStream {
  transform_stream_writable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn transform_stream_new_ffi(
  transformer : JsValue,
  writable_strategy : JsValue,
  readable_strategy : JsValue,
) -> TransformStream = "webapi_TransformStream" "new"

///|
#cfg(target="wasm-gc")
fn transform_stream_readable_ffi(obj : JsValue) -> ReadableStream = "webapi_TransformStream" "get_readable"

///|
#cfg(target="wasm-gc")
fn transform_stream_writable_ffi(obj : JsValue) -> WritableStream = "webapi_TransformStream" "get_writable"
