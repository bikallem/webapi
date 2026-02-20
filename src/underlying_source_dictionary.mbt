// Do not edit. This file is generated.
// MoonBit type: UnderlyingSource
// Specifications: streams.idl

///|
/// [UnderlyingSource](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSource)
#external
pub type UnderlyingSource

///|
pub impl TJsValue for UnderlyingSource with to_js(self : UnderlyingSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for UnderlyingSource with from_js_any(value : JsAny) -> UnderlyingSource = "%identity"

///|
pub fn UnderlyingSource::new(
  start? : (ReadableStreamController) -> JsValue,
  pull? : (ReadableStreamController) -> JsPromise[JsValue],
  cancel? : (JsValue) -> JsPromise[JsValue],
  type_? : ReadableStreamType,
  auto_allocate_chunk_size? : UInt64,
) -> UnderlyingSource {
  underlying_source_ffi(
    match start {
      Some(v) => TJsValue::to_js(underlying_source_start_callback_ffi(v))
      None => JsValue::undefined()
    },
    match pull {
      Some(v) => TJsValue::to_js(underlying_source_pull_callback_ffi(v))
      None => JsValue::undefined()
    },
    match cancel {
      Some(v) => TJsValue::to_js(underlying_source_cancel_callback_ffi(v))
      None => JsValue::undefined()
    },
    opt_to_js(type_),
    opt_to_js(auto_allocate_chunk_size),
  )
}

///|
pub fn UnderlyingSource::empty() -> UnderlyingSource {
  underlying_source_empty_ffi()
}

///|
pub fn UnderlyingSource::start(
  self : UnderlyingSource,
) -> UnderlyingSourceStartCallback? {
  underlying_source_get_start_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSource::pull(
  self : UnderlyingSource,
) -> UnderlyingSourcePullCallback? {
  underlying_source_get_pull_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSource::cancel(
  self : UnderlyingSource,
) -> UnderlyingSourceCancelCallback? {
  underlying_source_get_cancel_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSource::type_(self : UnderlyingSource) -> ReadableStreamType? {
  underlying_source_get_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSource::auto_allocate_chunk_size(
  self : UnderlyingSource,
) -> UInt64? {
  underlying_source_get_auto_allocate_chunk_size_ffi(TJsValue::to_js(self)).to_option_prim()
}
