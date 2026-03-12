// Do not edit. This file is generated.
// MoonBit type: WritableStream
// Specifications: streams.idl

/// [WritableStream](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream)
#external
pub type WritableStream

pub impl TJsValue for WritableStream with to_js(self: WritableStream) -> JsValue = "%identity"

pub impl FromJsAny for WritableStream with from_js_any(value : JsAny) -> WritableStream = "%identity"

pub fn[T: TWritableStream] WritableStream::into(self : WritableStream) -> T = "%identity"

pub impl TWritableStream for WritableStream

pub fn WritableStream::new(underlying_sink? : JsValue, 
strategy? : QueuingStrategy) -> WritableStream {
  writable_stream_new_ffi(opt_to_js(underlying_sink), opt_to_js(strategy))
}

/// [WritableStream](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream) interface.
pub trait TWritableStream: TJsValue {
  locked(self : Self) -> Bool = _
  abort(self : Self, reason? : JsValue) -> JsPromise[JsValue] = _
  close(self : Self) -> JsPromise[JsValue] = _
  get_writer(self : Self) -> WritableStreamDefaultWriter = _
}

/// [WritableStream.locked](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/locked)
impl TWritableStream with locked(self : Self) -> Bool {
  writable_stream_locked_ffi(TJsValue::to_js(self))
}

/// [WritableStream.abort](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/abort)
impl TWritableStream with abort(self : Self, 
reason? : JsValue) -> JsPromise[JsValue] {
  writable_stream_abort_ffi(TJsValue::to_js(self), opt_to_js(reason))
}

/// [WritableStream.close](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/close)
impl TWritableStream with close(self : Self) -> JsPromise[JsValue] {
  writable_stream_close_ffi(TJsValue::to_js(self))
}

/// [WritableStream.getWriter](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream/getWriter)
impl TWritableStream with get_writer(self : Self) -> WritableStreamDefaultWriter {
  writable_stream_get_writer_ffi(TJsValue::to_js(self))
}