// Do not edit. This file is generated.
// MoonBit type: ReadableWritablePair
// Specifications: streams.idl

///|
/// [ReadableWritablePair](https://developer.mozilla.org/en-US/docs/Web/API/ReadableWritablePair)
#external
pub type ReadableWritablePair

///|
pub impl TJsValue for ReadableWritablePair with to_js(
  self : ReadableWritablePair,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableWritablePair with from_js_any(value : JsAny) -> ReadableWritablePair = "%identity"

///|
pub fn ReadableWritablePair::new(
  readable : &TReadableStream,
  writable : &TWritableStream,
) -> ReadableWritablePair {
  readable_writable_pair_ffi(
    TJsValue::to_js(readable),
    TJsValue::to_js(writable),
  )
}

///|
pub fn ReadableWritablePair::empty() -> ReadableWritablePair {
  readable_writable_pair_empty_ffi()
}

///|
pub fn ReadableWritablePair::readable(
  self : ReadableWritablePair,
) -> ReadableStream {
  readable_writable_pair_get_readable_ffi(TJsValue::to_js(self))
}

///|
pub fn ReadableWritablePair::writable(
  self : ReadableWritablePair,
) -> WritableStream {
  readable_writable_pair_get_writable_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn readable_writable_pair_ffi(
  readable : JsValue,
  writable : JsValue,
) -> ReadableWritablePair =
  #|(readable, writable) => {
  #|  const obj = {};
  #|  if (readable !== undefined) obj.readable = readable;
  #|  if (writable !== undefined) obj.writable = writable;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn readable_writable_pair_empty_ffi() -> ReadableWritablePair = "() => {}"

///|
#cfg(target="js")
extern "js" fn readable_writable_pair_get_readable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.readable"

///|
#cfg(target="js")
fn readable_writable_pair_get_readable_ffi(obj : JsValue) -> ReadableStream {
  readable_writable_pair_get_readable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_writable_pair_get_writable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.writable"

///|
#cfg(target="js")
fn readable_writable_pair_get_writable_ffi(obj : JsValue) -> WritableStream {
  readable_writable_pair_get_writable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_writable_pair_ffi(
  readable : JsValue,
  writable : JsValue,
) -> ReadableWritablePair = "webapi_ReadableWritablePair" "new"

///|
#cfg(target="wasm-gc")
fn readable_writable_pair_empty_ffi() -> ReadableWritablePair = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn readable_writable_pair_get_readable_ffi(obj : JsValue) -> ReadableStream = "webapi_ReadableWritablePair" "get_readable"

///|
#cfg(target="wasm-gc")
fn readable_writable_pair_get_writable_ffi(obj : JsValue) -> WritableStream = "webapi_ReadableWritablePair" "get_writable"
