// Do not edit. This file is generated.
// MoonBit type: WritableStreamDefaultWriter
// Specifications: streams.idl

/// [WritableStreamDefaultWriter](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter)
#external
pub type WritableStreamDefaultWriter

pub impl TJsValue for WritableStreamDefaultWriter with to_js(self: WritableStreamDefaultWriter) -> JsValue = "%identity"

pub impl FromJsAny for WritableStreamDefaultWriter with from_js_any(value : JsAny) -> WritableStreamDefaultWriter = "%identity"

pub fn[T: TWritableStreamDefaultWriter] WritableStreamDefaultWriter::into(self : WritableStreamDefaultWriter) -> T = "%identity"

pub impl TWritableStreamDefaultWriter for WritableStreamDefaultWriter

pub fn WritableStreamDefaultWriter::new(stream : &TWritableStream) -> WritableStreamDefaultWriter {
  writable_stream_default_writer_new_ffi(TJsValue::to_js(stream))
}

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

/// [WritableStreamDefaultWriter.closed](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/closed)
impl TWritableStreamDefaultWriter with closed(self : Self) -> JsPromise[JsValue] {
  writable_stream_default_writer_closed_ffi(TJsValue::to_js(self))
}

/// [WritableStreamDefaultWriter.desiredSize](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/desiredSize)
impl TWritableStreamDefaultWriter with desired_size(self : Self) -> Double {
  writable_stream_default_writer_desired_size_ffi(TJsValue::to_js(self))
}

/// [WritableStreamDefaultWriter.ready](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/ready)
impl TWritableStreamDefaultWriter with ready(self : Self) -> JsPromise[JsValue] {
  writable_stream_default_writer_ready_ffi(TJsValue::to_js(self))
}

/// [WritableStreamDefaultWriter.abort](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/abort)
impl TWritableStreamDefaultWriter with abort(self : Self, 
reason? : JsValue) -> JsPromise[JsValue] {
  writable_stream_default_writer_abort_ffi(TJsValue::to_js(self), opt_to_js(reason))
}

/// [WritableStreamDefaultWriter.close](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/close)
impl TWritableStreamDefaultWriter with close(self : Self) -> JsPromise[JsValue] {
  writable_stream_default_writer_close_ffi(TJsValue::to_js(self))
}

/// [WritableStreamDefaultWriter.releaseLock](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/releaseLock)
impl TWritableStreamDefaultWriter with release_lock(self : Self) -> Unit {
  writable_stream_default_writer_release_lock_ffi(TJsValue::to_js(self))
}

/// [WritableStreamDefaultWriter.write](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter/write)
impl TWritableStreamDefaultWriter with write(self : Self, 
chunk? : JsValue) -> JsPromise[JsValue] {
  writable_stream_default_writer_write_ffi(TJsValue::to_js(self), opt_to_js(chunk))
}