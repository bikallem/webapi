// Do not edit. This file is generated.
// MoonBit type: WritableStream
// Specifications: streams.idl

///|
/// [WritableStream](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream)
#external
pub type WritableStream

///|
pub impl TJsValue for WritableStream with to_js(self : WritableStream) -> JsValue = "%identity"

///|
pub impl FromJsAny for WritableStream with from_js_any(value : JsAny) -> WritableStream = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWritableStream] WritableStream::into(self : WritableStream) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TWritableStream] WritableStream::unsafe_into(
  self : WritableStream,
) -> T = "%identity"

///|
pub impl HasConstructor for WritableStream with constructor_name() {
  "WritableStream"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWritableStream + HasConstructor] WritableStream::try_into(
  self : WritableStream,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TWritableStream for WritableStream

///|
pub fn WritableStream::new(
  underlying_sink? : JsValue,
  strategy? : QueuingStrategy,
) -> WritableStream {
  writable_stream_new_ffi(opt_to_js(underlying_sink), opt_to_js(strategy))
}

///|
/// [WritableStream](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream) interface.
pub trait TWritableStream: TJsValue {
  locked(self : Self) -> Bool = _
  abort(self : Self, reason? : JsValue) -> JsPromise[JsValue] = _
  close(self : Self) -> JsPromise[JsValue] = _
  get_writer(self : Self) -> WritableStreamDefaultWriter = _
}

///|
/// [WritableStream.locked](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/locked)
impl TWritableStream with locked(self : Self) -> Bool {
  writable_stream_locked_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStream.abort](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/abort)
impl TWritableStream with abort(self : Self, reason? : JsValue) -> JsPromise[
  JsValue,
] {
  writable_stream_abort_ffi(TJsValue::to_js(self), opt_to_js(reason))
}

///|
/// [WritableStream.close](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/close)
impl TWritableStream with close(self : Self) -> JsPromise[JsValue] {
  writable_stream_close_ffi(TJsValue::to_js(self))
}

///|
/// [WritableStream.getWriter](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/getWriter)
impl TWritableStream with get_writer(self : Self) -> WritableStreamDefaultWriter {
  writable_stream_get_writer_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn writable_stream_new_ffi(
  underlying_sink : JsValue,
  strategy : JsValue,
) -> WritableStream = "(underlying_sink, strategy) => new WritableStream(underlying_sink, strategy)"

///|
#cfg(target="js")
extern "js" fn writable_stream_locked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.locked"

///|
#cfg(target="js")
fn writable_stream_locked_ffi(obj : JsValue) -> Bool {
  writable_stream_locked_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_abort_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.abort(reason)"

///|
#cfg(target="js")
fn writable_stream_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_abort_ffi_js(obj, reason).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_close_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.close()"

///|
#cfg(target="js")
fn writable_stream_close_ffi(obj : JsValue) -> JsPromise[JsValue] {
  writable_stream_close_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn writable_stream_get_writer_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getWriter()"

///|
#cfg(target="js")
fn writable_stream_get_writer_ffi(obj : JsValue) -> WritableStreamDefaultWriter {
  writable_stream_get_writer_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_new_ffi(
  underlying_sink : JsValue,
  strategy : JsValue,
) -> WritableStream = "webapi_WritableStream" "new"

///|
#cfg(target="wasm-gc")
fn writable_stream_locked_ffi(obj : JsValue) -> Bool = "webapi_WritableStream" "get_locked"

///|
#cfg(target="wasm-gc")
fn writable_stream_abort_ffi_wasm(obj : JsValue, reason : JsValue) -> JsValue = "webapi_WritableStream" "abort"

///|
#cfg(target="wasm-gc")
fn writable_stream_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_abort_ffi_wasm(obj, reason).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_close_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WritableStream" "close"

///|
#cfg(target="wasm-gc")
fn writable_stream_close_ffi(obj : JsValue) -> JsPromise[JsValue] {
  writable_stream_close_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn writable_stream_get_writer_ffi(obj : JsValue) -> WritableStreamDefaultWriter = "webapi_WritableStream" "getWriter"
