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
  start? : (WritableStreamDefaultController) -> JsValue,
  write? : (JsValue, WritableStreamDefaultController) -> JsPromise[JsValue],
  close? : () -> JsPromise[JsValue],
  abort? : (JsValue) -> JsPromise[JsValue],
  type_? : JsValue,
) -> UnderlyingSink {
  underlying_sink_ffi(
    match start {
      Some(v) => TJsValue::to_js(underlying_sink_start_callback_ffi(v))
      None => JsValue::undefined()
    },
    match write {
      Some(v) => TJsValue::to_js(underlying_sink_write_callback_ffi(v))
      None => JsValue::undefined()
    },
    match close {
      Some(v) => TJsValue::to_js(underlying_sink_close_callback_ffi(v))
      None => JsValue::undefined()
    },
    match abort {
      Some(v) => TJsValue::to_js(underlying_sink_abort_callback_ffi(v))
      None => JsValue::undefined()
    },
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
