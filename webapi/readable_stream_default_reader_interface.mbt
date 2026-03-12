// Do not edit. This file is generated.
// MoonBit type: ReadableStreamDefaultReader
// Specifications: streams.idl

///|
/// [ReadableStreamDefaultReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader)
#external
pub type ReadableStreamDefaultReader

///|
pub impl TJsValue for ReadableStreamDefaultReader with to_js(
  self : ReadableStreamDefaultReader,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamDefaultReader with from_js_any(
  value : JsAny,
) -> ReadableStreamDefaultReader = "%identity"

///|
pub fn[T : TReadableStreamDefaultReader] ReadableStreamDefaultReader::into(
  self : ReadableStreamDefaultReader,
) -> T = "%identity"

///|
pub impl TReadableStreamDefaultReader for ReadableStreamDefaultReader

///|
pub fn ReadableStreamDefaultReader::new(
  stream : &TReadableStream,
) -> ReadableStreamDefaultReader {
  readable_stream_default_reader_new_ffi(TJsValue::to_js(stream))
}

///|
/// [ReadableStreamDefaultReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader) interface.
pub trait TReadableStreamDefaultReader: TJsValue {
  read(self : Self) -> JsPromise[ReadableStreamReadResult] = _
  release_lock(self : Self) -> Unit = _
  closed(self : Self) -> JsPromise[JsValue] = _
  cancel(self : Self, reason? : JsValue) -> JsPromise[JsValue] = _
}

///|
/// [ReadableStreamDefaultReader.read](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader/read)
impl TReadableStreamDefaultReader with read(self : Self) -> JsPromise[
  ReadableStreamReadResult,
] {
  readable_stream_default_reader_read_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamDefaultReader.releaseLock](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader/releaseLock)
impl TReadableStreamDefaultReader with release_lock(self : Self) -> Unit {
  readable_stream_default_reader_release_lock_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamDefaultReader.closed](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader/closed)
impl TReadableStreamDefaultReader with closed(self : Self) -> JsPromise[JsValue] {
  readable_stream_default_reader_closed_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamDefaultReader.cancel](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader/cancel)
impl TReadableStreamDefaultReader with cancel(self : Self, reason? : JsValue) -> JsPromise[
  JsValue,
] {
  readable_stream_default_reader_cancel_ffi(
    TJsValue::to_js(self),
    opt_to_js(reason),
  )
}

///|
#cfg(target="js")
extern "js" fn readable_stream_default_reader_new_ffi(
  stream : JsValue,
) -> ReadableStreamDefaultReader = "(stream) => new ReadableStreamDefaultReader(stream)"

///|
#cfg(target="js")
extern "js" fn readable_stream_default_reader_read_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.read()"

///|
#cfg(target="js")
fn readable_stream_default_reader_read_ffi(
  obj : JsValue,
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_default_reader_read_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_default_reader_release_lock_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.releaseLock()"

///|
#cfg(target="js")
extern "js" fn readable_stream_default_reader_closed_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.closed"

///|
#cfg(target="js")
fn readable_stream_default_reader_closed_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_closed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_default_reader_cancel_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.cancel(reason)"

///|
#cfg(target="js")
fn readable_stream_default_reader_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_cancel_ffi_js(obj, reason).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_new_ffi(
  stream : JsValue,
) -> ReadableStreamDefaultReader = "webapi_ReadableStreamDefaultReader" "new"

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_read_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ReadableStreamDefaultReader" "read"

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_read_ffi(
  obj : JsValue,
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_default_reader_read_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_release_lock_ffi(obj : JsValue) -> Unit = "webapi_ReadableStreamDefaultReader" "releaseLock"

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_closed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ReadableStreamDefaultReader" "get_closed"

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_closed_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_closed_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_cancel_ffi_wasm(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "webapi_ReadableStreamDefaultReader" "cancel"

///|
#cfg(target="wasm-gc")
fn readable_stream_default_reader_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_cancel_ffi_wasm(obj, reason).unsafe_cast()
}
