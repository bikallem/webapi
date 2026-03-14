// Do not edit. This file is generated.
// MoonBit type: ReadableStreamBYOBReaderReadOptions
// Specifications: streams.idl

/// [ReadableStreamBYOBReaderReadOptions](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReaderReadOptions)
#external
pub type ReadableStreamBYOBReaderReadOptions

pub impl TJsValue for ReadableStreamBYOBReaderReadOptions with to_js(self: ReadableStreamBYOBReaderReadOptions) -> JsValue = "%identity"

pub impl FromJsAny for ReadableStreamBYOBReaderReadOptions with from_js_any(value : JsAny) -> ReadableStreamBYOBReaderReadOptions = "%identity"

pub fn ReadableStreamBYOBReaderReadOptions::new(min? : UInt64) -> ReadableStreamBYOBReaderReadOptions {
  readable_stream_byob_reader_read_options_ffi(opt_to_js(min))
}

pub fn ReadableStreamBYOBReaderReadOptions::empty() -> ReadableStreamBYOBReaderReadOptions { readable_stream_byob_reader_read_options_empty_ffi() }

pub fn ReadableStreamBYOBReaderReadOptions::min(self : ReadableStreamBYOBReaderReadOptions) -> UInt64? {
  readable_stream_byob_reader_read_options_get_min_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn readable_stream_byob_reader_read_options_ffi(min: JsValue) -> ReadableStreamBYOBReaderReadOptions = 
#|(min) => {
#|  const obj = {};
#|  if (min !== undefined) obj.min = min;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn readable_stream_byob_reader_read_options_empty_ffi() -> ReadableStreamBYOBReaderReadOptions = "() => {}"

#cfg(target="js")
extern "js" fn readable_stream_byob_reader_read_options_get_min_ffi(obj: JsValue) -> JsValue = "(obj) => obj.min"

#cfg(target="wasm-gc")
fn readable_stream_byob_reader_read_options_ffi(min: JsValue) -> ReadableStreamBYOBReaderReadOptions = "webapi_ReadableStreamBYOBReaderReadOptions" "new"

#cfg(target="wasm-gc")
fn readable_stream_byob_reader_read_options_empty_ffi() -> ReadableStreamBYOBReaderReadOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn readable_stream_byob_reader_read_options_get_min_ffi(obj: JsValue) -> JsValue = "webapi_ReadableStreamBYOBReaderReadOptions" "get_min"