// Do not edit. This file is generated.
// MoonBit type: ReadableStreamGetReaderOptions
// Specifications: streams.idl

///|
/// [ReadableStreamGetReaderOptions](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamGetReaderOptions)
#external
pub type ReadableStreamGetReaderOptions

///|
pub impl TJsValue for ReadableStreamGetReaderOptions with to_js(
  self : ReadableStreamGetReaderOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamGetReaderOptions with from_js_any(
  value : JsAny,
) -> ReadableStreamGetReaderOptions = "%identity"

///|
pub fn ReadableStreamGetReaderOptions::new(
  mode? : ReadableStreamReaderMode,
) -> ReadableStreamGetReaderOptions {
  readable_stream_get_reader_options_ffi(opt_to_js(mode))
}

///|
pub fn ReadableStreamGetReaderOptions::empty() -> ReadableStreamGetReaderOptions {
  readable_stream_get_reader_options_empty_ffi()
}

///|
pub fn ReadableStreamGetReaderOptions::mode(
  self : ReadableStreamGetReaderOptions,
) -> ReadableStreamReaderMode? {
  readable_stream_get_reader_options_get_mode_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_get_reader_options_ffi(
  mode : JsValue,
) -> ReadableStreamGetReaderOptions =
  #|(mode) => {
  #|  const obj = {};
  #|  if (mode !== undefined) obj.mode = mode;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn readable_stream_get_reader_options_empty_ffi() -> ReadableStreamGetReaderOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn readable_stream_get_reader_options_get_mode_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="wasm-gc")
fn readable_stream_get_reader_options_ffi(
  mode : JsValue,
) -> ReadableStreamGetReaderOptions = "webapi_ReadableStreamGetReaderOptions" "new"

///|
#cfg(target="wasm-gc")
fn readable_stream_get_reader_options_empty_ffi() -> ReadableStreamGetReaderOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn readable_stream_get_reader_options_get_mode_ffi(obj : JsValue) -> JsValue = "webapi_ReadableStreamGetReaderOptions" "get_mode"
