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
  let result = readable_stream_read_result_get_value_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ReadableStreamReadResult::done(self : ReadableStreamReadResult) -> Bool? {
  let result = readable_stream_read_result_get_done_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
