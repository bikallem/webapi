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
  start? : UnderlyingSourceStartCallback,
  pull? : UnderlyingSourcePullCallback,
  cancel? : UnderlyingSourceCancelCallback,
  type_? : ReadableStreamType,
  auto_allocate_chunk_size? : UInt64,
) -> UnderlyingSource {
  underlying_source_ffi(
    opt_to_js(start),
    opt_to_js(pull),
    opt_to_js(cancel),
    opt_to_js(type_),
    opt_to_js(auto_allocate_chunk_size),
  )
}

///|
pub fn UnderlyingSource::empty() -> UnderlyingSource {
  underlying_source_empty_ffi()
}
