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

///|
pub fn UnderlyingSink::start(
  self : UnderlyingSink,
) -> UnderlyingSinkStartCallback? {
  let result = underlying_sink_get_start_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn UnderlyingSink::write(
  self : UnderlyingSink,
) -> UnderlyingSinkWriteCallback? {
  let result = underlying_sink_get_write_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn UnderlyingSink::close(
  self : UnderlyingSink,
) -> UnderlyingSinkCloseCallback? {
  let result = underlying_sink_get_close_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn UnderlyingSink::abort(
  self : UnderlyingSink,
) -> UnderlyingSinkAbortCallback? {
  let result = underlying_sink_get_abort_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn UnderlyingSink::type_(self : UnderlyingSink) -> JsValue? {
  let result = underlying_sink_get_type_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
