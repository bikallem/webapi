// Do not edit. This file is generated.
// MoonBit type: StreamPipeOptions
// Specifications: streams.idl

///|
/// [StreamPipeOptions](https://developer.mozilla.org/en-US/docs/Web/API/StreamPipeOptions)
#external
pub type StreamPipeOptions

///|
pub impl TJsValue for StreamPipeOptions with to_js(self : StreamPipeOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for StreamPipeOptions with from_js_any(value : JsAny) -> StreamPipeOptions = "%identity"

///|
pub fn StreamPipeOptions::new(
  prevent_close? : Bool,
  prevent_abort? : Bool,
  prevent_cancel? : Bool,
  signal? : &TAbortSignal,
) -> StreamPipeOptions {
  stream_pipe_options_ffi(
    opt_to_js(prevent_close),
    opt_to_js(prevent_abort),
    opt_to_js(prevent_cancel),
    opt_to_js(signal),
  )
}

///|
pub fn StreamPipeOptions::empty() -> StreamPipeOptions {
  stream_pipe_options_empty_ffi()
}

///|
pub fn StreamPipeOptions::prevent_close(self : StreamPipeOptions) -> Bool? {
  stream_pipe_options_get_prevent_close_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StreamPipeOptions::prevent_abort(self : StreamPipeOptions) -> Bool? {
  stream_pipe_options_get_prevent_abort_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StreamPipeOptions::prevent_cancel(self : StreamPipeOptions) -> Bool? {
  stream_pipe_options_get_prevent_cancel_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StreamPipeOptions::signal(self : StreamPipeOptions) -> AbortSignal? {
  stream_pipe_options_get_signal_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn stream_pipe_options_ffi(
  prevent_close : JsValue,
  prevent_abort : JsValue,
  prevent_cancel : JsValue,
  signal : JsValue,
) -> StreamPipeOptions =
  #|(preventClose, preventAbort, preventCancel, signal) => {
  #|  const obj = {};
  #|  if (preventClose !== undefined) obj.preventClose = preventClose;
  #|  if (preventAbort !== undefined) obj.preventAbort = preventAbort;
  #|  if (preventCancel !== undefined) obj.preventCancel = preventCancel;
  #|  if (signal !== undefined) obj.signal = signal;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn stream_pipe_options_empty_ffi() -> StreamPipeOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn stream_pipe_options_get_prevent_close_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preventClose"

///|
#cfg(target="js")
extern "js" fn stream_pipe_options_get_prevent_abort_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preventAbort"

///|
#cfg(target="js")
extern "js" fn stream_pipe_options_get_prevent_cancel_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preventCancel"

///|
#cfg(target="js")
extern "js" fn stream_pipe_options_get_signal_ffi(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="wasm-gc")
fn stream_pipe_options_ffi(
  prevent_close : JsValue,
  prevent_abort : JsValue,
  prevent_cancel : JsValue,
  signal : JsValue,
) -> StreamPipeOptions = "webapi_StreamPipeOptions" "new"

///|
#cfg(target="wasm-gc")
fn stream_pipe_options_empty_ffi() -> StreamPipeOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn stream_pipe_options_get_prevent_close_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_preventClose"

///|
#cfg(target="wasm-gc")
fn stream_pipe_options_get_prevent_abort_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_preventAbort"

///|
#cfg(target="wasm-gc")
fn stream_pipe_options_get_prevent_cancel_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_preventCancel"

///|
#cfg(target="wasm-gc")
fn stream_pipe_options_get_signal_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_signal"
