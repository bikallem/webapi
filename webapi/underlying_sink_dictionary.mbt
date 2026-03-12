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
  underlying_sink_get_start_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSink::write(
  self : UnderlyingSink,
) -> UnderlyingSinkWriteCallback? {
  underlying_sink_get_write_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSink::close(
  self : UnderlyingSink,
) -> UnderlyingSinkCloseCallback? {
  underlying_sink_get_close_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSink::abort(
  self : UnderlyingSink,
) -> UnderlyingSinkAbortCallback? {
  underlying_sink_get_abort_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn UnderlyingSink::type_(self : UnderlyingSink) -> JsValue? {
  underlying_sink_get_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn underlying_sink_ffi(
  start : JsValue,
  write : JsValue,
  close : JsValue,
  abort : JsValue,
  type_ : JsValue,
) -> UnderlyingSink =
  #|(start, write, close, abort, type) => {
  #|  const obj = {};
  #|  if (start !== undefined) obj.start = start;
  #|  if (write !== undefined) obj.write = write;
  #|  if (close !== undefined) obj.close = close;
  #|  if (abort !== undefined) obj.abort = abort;
  #|  if (type !== undefined) obj.type = type;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn underlying_sink_empty_ffi() -> UnderlyingSink = "() => {}"

///|
#cfg(target="js")
extern "js" fn underlying_sink_get_start_ffi(obj : JsValue) -> JsValue = "(obj) => obj.start"

///|
#cfg(target="js")
extern "js" fn underlying_sink_get_write_ffi(obj : JsValue) -> JsValue = "(obj) => obj.write"

///|
#cfg(target="js")
extern "js" fn underlying_sink_get_close_ffi(obj : JsValue) -> JsValue = "(obj) => obj.close"

///|
#cfg(target="js")
extern "js" fn underlying_sink_get_abort_ffi(obj : JsValue) -> JsValue = "(obj) => obj.abort"

///|
#cfg(target="js")
extern "js" fn underlying_sink_get_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="wasm-gc")
fn underlying_sink_ffi(
  start : JsValue,
  write : JsValue,
  close : JsValue,
  abort : JsValue,
  type_ : JsValue,
) -> UnderlyingSink = "webapi_UnderlyingSink" "new"

///|
#cfg(target="wasm-gc")
fn underlying_sink_empty_ffi() -> UnderlyingSink = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn underlying_sink_get_start_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSink" "get_start"

///|
#cfg(target="wasm-gc")
fn underlying_sink_get_write_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSink" "get_write"

///|
#cfg(target="wasm-gc")
fn underlying_sink_get_close_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSink" "get_close"

///|
#cfg(target="wasm-gc")
fn underlying_sink_get_abort_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSink" "get_abort"

///|
#cfg(target="wasm-gc")
fn underlying_sink_get_type_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSink" "get_type"
