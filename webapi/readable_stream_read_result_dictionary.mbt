// Do not edit. This file is generated.
// MoonBit type: ReadableStreamReadResult
// Specifications: streams.idl

///|
/// [ReadableStreamReadResult](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamReadResult)
#external
pub type ReadableStreamReadResult

///|
pub impl TJsValue for ReadableStreamReadResult with to_js(
  self : ReadableStreamReadResult,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamReadResult with from_js_any(value : JsAny) -> ReadableStreamReadResult = "%identity"

///|
pub fn ReadableStreamReadResult::new(
  value? : JsValue,
  done? : Bool,
) -> ReadableStreamReadResult {
  readable_stream_read_result_ffi(opt_to_js(value), opt_to_js(done))
}

///|
pub fn ReadableStreamReadResult::empty() -> ReadableStreamReadResult {
  readable_stream_read_result_empty_ffi()
}

///|
pub fn ReadableStreamReadResult::value(
  self : ReadableStreamReadResult,
) -> JsValue? {
  readable_stream_read_result_get_value_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn ReadableStreamReadResult::done(self : ReadableStreamReadResult) -> Bool? {
  readable_stream_read_result_get_done_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_read_result_ffi(
  value : JsValue,
  done : JsValue,
) -> ReadableStreamReadResult =
  #|(value, done) => {
  #|  const obj = {};
  #|  if (value !== undefined) obj.value = value;
  #|  if (done !== undefined) obj.done = done;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn readable_stream_read_result_empty_ffi() -> ReadableStreamReadResult = "() => {}"

///|
#cfg(target="js")
extern "js" fn readable_stream_read_result_get_value_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
extern "js" fn readable_stream_read_result_get_done_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.done"

///|
#cfg(target="wasm-gc")
fn readable_stream_read_result_ffi(
  value : JsValue,
  done : JsValue,
) -> ReadableStreamReadResult = "webapi_ReadableStreamReadResult" "new"

///|
#cfg(target="wasm-gc")
fn readable_stream_read_result_empty_ffi() -> ReadableStreamReadResult = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn readable_stream_read_result_get_value_ffi(obj : JsValue) -> JsValue = "webapi_ReadableStreamReadResult" "get_value"

///|
#cfg(target="wasm-gc")
fn readable_stream_read_result_get_done_ffi(obj : JsValue) -> JsValue = "webapi_ReadableStreamReadResult" "get_done"
