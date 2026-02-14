// Do not edit. This file is generated.
// MoonBit type: UnderlyingSink
// Specifications: streams.idl

///|
/// [UnderlyingSink](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSink)
#external
pub type UnderlyingSink

///|
pub impl TJsValue for UnderlyingSink with to_js(self : UnderlyingSink) -> JsValue = "%identity"

///|
pub impl FromJsAny for UnderlyingSink with from_js_any(value : JsAny) -> UnderlyingSink = "%identity"

///|
pub fn UnderlyingSink::new(
  start? : UnderlyingSinkStartCallback,
  write? : UnderlyingSinkWriteCallback,
  close? : UnderlyingSinkCloseCallback,
  abort? : UnderlyingSinkAbortCallback,
  type_? : JsValue,
) -> UnderlyingSink {
  underlying_sink_ffi(
    opt_to_js(start),
    opt_to_js(write),
    opt_to_js(close),
    opt_to_js(abort),
    opt_to_js(type_),
  )
}

///|
pub fn UnderlyingSink::empty() -> UnderlyingSink {
  underlying_sink_empty_ffi()
}
