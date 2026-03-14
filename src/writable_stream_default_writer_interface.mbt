// Do not edit. This file is generated.
// MoonBit type: WritableStreamDefaultWriter
// Specifications: streams.idl

///|
/// [WritableStreamDefaultWriter](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter)
#external
pub type WritableStreamDefaultWriter

///|
pub impl TJsValue for WritableStreamDefaultWriter with to_js(
  self : WritableStreamDefaultWriter,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for WritableStreamDefaultWriter with from_js_any(
  value : JsAny,
) -> WritableStreamDefaultWriter = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWritableStreamDefaultWriter] WritableStreamDefaultWriter::into(
  self : WritableStreamDefaultWriter,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TWritableStreamDefaultWriter] WritableStreamDefaultWriter::unsafe_into(
  self : WritableStreamDefaultWriter,
) -> T = "%identity"

///|
pub impl HasConstructor for WritableStreamDefaultWriter with constructor_name() {
  "WritableStreamDefaultWriter"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWritableStreamDefaultWriter + HasConstructor] WritableStreamDefaultWriter::try_into(
  self : WritableStreamDefaultWriter,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TWritableStreamDefaultWriter for WritableStreamDefaultWriter

///|
pub fn WritableStreamDefaultWriter::new(
  stream : &TWritableStream,
) -> WritableStreamDefaultWriter {
  writable_stream_default_writer_new_ffi(TJsValue::to_js(stream))
}

///|
/// [WritableStreamDefaultWriter](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter) interface.
pub trait TWritableStreamDefaultWriter: TJsValue {
  closed(self : Self) -> JsPromise[JsValue] = _
  desired_size(self : Self) -> Double = _
  ready(self : Self) -> JsPromise[JsValue] = _
  abort(self : Self, reason? : JsValue) -> JsPromise[JsValue] = _
  close(self : Self) -> JsPromise[JsValue] = _
  release_lock(self : Self) -> Unit = _
  write(self : Self, chunk? : JsValue) -> JsPromise[JsValue] = _
}

///|
/// [WritableStreamDefaultWriter.closed](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/closed)
impl TWritableStreamDefaultWriter with closed(self : Self) -> JsPromise[JsValue] {
  writable_stream_default_writer_closed_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStreamDefaultWriter.desiredSize](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/desiredSize)
impl TWritableStreamDefaultWriter with desired_size(self : Self) -> Double {
  writable_stream_default_writer_desired_size_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStreamDefaultWriter.ready](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/ready)
impl TWritableStreamDefaultWriter with ready(self : Self) -> JsPromise[JsValue] {
  writable_stream_default_writer_ready_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStreamDefaultWriter.abort](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/abort)
impl TWritableStreamDefaultWriter with abort(self : Self, reason? : JsValue) -> JsPromise[
  JsValue,
] {
  writable_stream_default_writer_abort_ffi(
    TJsValue::to_js(self),
    opt_to_js(reason),
  )
}

///|
/// [WritableStreamDefaultWriter.close](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/close)
impl TWritableStreamDefaultWriter with close(self : Self) -> JsPromise[JsValue] {
  writable_stream_default_writer_close_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStreamDefaultWriter.releaseLock](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/releaseLock)
impl TWritableStreamDefaultWriter with release_lock(self : Self) -> Unit {
  writable_stream_default_writer_release_lock_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStreamDefaultWriter.write](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/write)
impl TWritableStreamDefaultWriter with write(self : Self, chunk? : JsValue) -> JsPromise[
  JsValue,
] {
  writable_stream_default_writer_write_ffi(
    TJsValue::to_js(self),
    opt_to_js(chunk),
  )
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_new_ffi(
  stream : JsValue,
) -> WritableStreamDefaultWriter = "(stream) => new WritableStreamDefaultWriter(stream)"

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_closed_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.closed"

///|
#cfg(target="js")
fn writable_stream_default_writer_closed_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_closed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_desired_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.desiredSize"

///|
#cfg(target="js")
fn writable_stream_default_writer_desired_size_ffi(obj : JsValue) -> Double {
  writable_stream_default_writer_desired_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_ready_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ready"

///|
#cfg(target="js")
fn writable_stream_default_writer_ready_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_ready_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_abort_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.abort(reason)"

///|
#cfg(target="js")
fn writable_stream_default_writer_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_abort_ffi_js(obj, reason).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_close_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.close()"

///|
#cfg(target="js")
fn writable_stream_default_writer_close_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_close_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_release_lock_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.releaseLock()"

///|
#cfg(target="js")
extern "js" fn writable_stream_default_writer_write_ffi_js(
  obj : JsValue,
  chunk : JsValue,
) -> JsValue = "(obj, chunk) => obj.write(chunk)"

///|
#cfg(target="js")
fn writable_stream_default_writer_write_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_write_ffi_js(obj, chunk).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_new_ffi(
  stream : JsValue,
) -> WritableStreamDefaultWriter = "webapi_WritableStreamDefaultWriter" "new"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_closed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "get_closed"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_closed_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_closed_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_desired_size_ffi(obj : JsValue) -> Double = "webapi_WritableStreamDefaultWriter" "get_desiredSize"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_ready_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "get_ready"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_ready_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_ready_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_abort_ffi_wasm(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "webapi_WritableStreamDefaultWriter" "abort"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_abort_ffi_wasm(obj, reason).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_close_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "close"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_close_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_close_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_release_lock_ffi(obj : JsValue) -> Unit = "webapi_WritableStreamDefaultWriter" "releaseLock"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_write_ffi_wasm(
  obj : JsValue,
  chunk : JsValue,
) -> JsValue = "webapi_WritableStreamDefaultWriter" "write"

///|
#cfg(target="wasm-gc")
fn writable_stream_default_writer_write_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_write_ffi_wasm(obj, chunk).unsafe_cast()
}
