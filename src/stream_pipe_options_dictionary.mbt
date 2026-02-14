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
  prevent_close? : Bool = false,
  prevent_abort? : Bool = false,
  prevent_cancel? : Bool = false,
  signal? : &TAbortSignal,
) -> StreamPipeOptions {
  stream_pipe_options_ffi(
    TJsValue::to_js(prevent_close),
    TJsValue::to_js(prevent_abort),
    TJsValue::to_js(prevent_cancel),
    opt_to_js(signal),
  )
}

///|
pub fn StreamPipeOptions::empty() -> StreamPipeOptions {
  stream_pipe_options_empty_ffi()
}
