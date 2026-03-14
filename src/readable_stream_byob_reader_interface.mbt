// Do not edit. This file is generated.
// MoonBit type: ReadableStreamBYOBReader
// Specifications: streams.idl

///|
/// [ReadableStreamBYOBReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader)
#external
pub type ReadableStreamBYOBReader

///|
pub impl TJsValue for ReadableStreamBYOBReader with to_js(
  self : ReadableStreamBYOBReader,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamBYOBReader with from_js_any(value : JsAny) -> ReadableStreamBYOBReader = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TReadableStreamBYOBReader] ReadableStreamBYOBReader::into(
  self : ReadableStreamBYOBReader,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TReadableStreamBYOBReader] ReadableStreamBYOBReader::unsafe_into(
  self : ReadableStreamBYOBReader,
) -> T = "%identity"

///|
pub impl HasConstructor for ReadableStreamBYOBReader with constructor_name() {
  "ReadableStreamBYOBReader"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TReadableStreamBYOBReader + HasConstructor] ReadableStreamBYOBReader::try_into(
  self : ReadableStreamBYOBReader,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TReadableStreamBYOBReader for ReadableStreamBYOBReader

///|
pub fn ReadableStreamBYOBReader::new(
  stream : &TReadableStream,
) -> ReadableStreamBYOBReader {
  readable_stream_byob_reader_new_ffi(TJsValue::to_js(stream))
}

///|
/// [ReadableStreamBYOBReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader) interface.
pub trait TReadableStreamBYOBReader: TJsValue {
  read(
    self : Self,
    view : &TArrayBufferView,
    options? : ReadableStreamBYOBReaderReadOptions,
  ) -> JsPromise[ReadableStreamReadResult] = _
  release_lock(self : Self) -> Unit = _
  closed(self : Self) -> JsPromise[JsValue] = _
  cancel(self : Self, reason? : JsValue) -> JsPromise[JsValue] = _
}

///|
/// [ReadableStreamBYOBReader.read](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/read)
impl TReadableStreamBYOBReader with read(
  self : Self,
  view : &TArrayBufferView,
  options? : ReadableStreamBYOBReaderReadOptions,
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_byob_reader_read_ffi(
    TJsValue::to_js(self),
    view.to_js(),
    opt_to_js(options),
  )
}

///|
/// [ReadableStreamBYOBReader.releaseLock](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/releaseLock)
impl TReadableStreamBYOBReader with release_lock(self : Self) -> Unit {
  readable_stream_byob_reader_release_lock_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamBYOBReader.closed](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/closed)
impl TReadableStreamBYOBReader with closed(self : Self) -> JsPromise[JsValue] {
  readable_stream_byob_reader_closed_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamBYOBReader.cancel](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/cancel)
impl TReadableStreamBYOBReader with cancel(self : Self, reason? : JsValue) -> JsPromise[
  JsValue,
] {
  readable_stream_byob_reader_cancel_ffi(
    TJsValue::to_js(self),
    opt_to_js(reason),
  )
}

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_reader_new_ffi(
  stream : JsValue,
) -> ReadableStreamBYOBReader = "(stream) => new ReadableStreamBYOBReader(stream)"

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_reader_read_ffi_js(
  obj : JsValue,
  view : JsValue,
  options : JsValue,
) -> JsValue = "(obj, view, options) => obj.read(view, options)"

///|
#cfg(target="js")
fn readable_stream_byob_reader_read_ffi(
  obj : JsValue,
  view : JsValue,
  options : JsValue,
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_byob_reader_read_ffi_js(obj, view, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_reader_release_lock_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.releaseLock()"

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_reader_closed_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.closed"

///|
#cfg(target="js")
fn readable_stream_byob_reader_closed_ffi(obj : JsValue) -> JsPromise[JsValue] {
  readable_stream_byob_reader_closed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_reader_cancel_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.cancel(reason)"

///|
#cfg(target="js")
fn readable_stream_byob_reader_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_byob_reader_cancel_ffi_js(obj, reason).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_new_ffi(
  stream : JsValue,
) -> ReadableStreamBYOBReader = "webapi_ReadableStreamBYOBReader" "new"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_read_ffi_wasm(
  obj : JsValue,
  view : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ReadableStreamBYOBReader" "read"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_read_ffi(
  obj : JsValue,
  view : JsValue,
  options : JsValue,
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_byob_reader_read_ffi_wasm(obj, view, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_release_lock_ffi(obj : JsValue) -> Unit = "webapi_ReadableStreamBYOBReader" "releaseLock"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_closed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ReadableStreamBYOBReader" "get_closed"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_closed_ffi(obj : JsValue) -> JsPromise[JsValue] {
  readable_stream_byob_reader_closed_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_cancel_ffi_wasm(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "webapi_ReadableStreamBYOBReader" "cancel"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_reader_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_byob_reader_cancel_ffi_wasm(obj, reason).unsafe_cast()
}
