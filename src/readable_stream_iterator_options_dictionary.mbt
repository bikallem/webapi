// Do not edit. This file is generated.
// MoonBit type: ReadableStreamIteratorOptions
// Specifications: streams.idl

/// [ReadableStreamIteratorOptions](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamIteratorOptions)
#external
pub type ReadableStreamIteratorOptions

pub impl TJsValue for ReadableStreamIteratorOptions with to_js(self: ReadableStreamIteratorOptions) -> JsValue = "%identity"

pub impl FromJsAny for ReadableStreamIteratorOptions with from_js_any(value : JsAny) -> ReadableStreamIteratorOptions = "%identity"

pub fn ReadableStreamIteratorOptions::new(prevent_cancel? : Bool) -> ReadableStreamIteratorOptions {
  readable_stream_iterator_options_ffi(opt_to_js(prevent_cancel))
}

pub fn ReadableStreamIteratorOptions::empty() -> ReadableStreamIteratorOptions { readable_stream_iterator_options_empty_ffi() }

pub fn ReadableStreamIteratorOptions::prevent_cancel(self : ReadableStreamIteratorOptions) -> Bool? {
  readable_stream_iterator_options_get_prevent_cancel_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn readable_stream_iterator_options_ffi(prevent_cancel: JsValue) -> ReadableStreamIteratorOptions = 
#|(preventCancel) => {
#|  const obj = {};
#|  if (preventCancel !== undefined) obj.preventCancel = preventCancel;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn readable_stream_iterator_options_empty_ffi() -> ReadableStreamIteratorOptions = "() => {}"

#cfg(target="js")
extern "js" fn readable_stream_iterator_options_get_prevent_cancel_ffi(obj: JsValue) -> JsValue = "(obj) => obj.preventCancel"

#cfg(target="wasm-gc")
fn readable_stream_iterator_options_ffi(prevent_cancel: JsValue) -> ReadableStreamIteratorOptions = "webapi_ReadableStreamIteratorOptions" "new"

#cfg(target="wasm-gc")
fn readable_stream_iterator_options_empty_ffi() -> ReadableStreamIteratorOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn readable_stream_iterator_options_get_prevent_cancel_ffi(obj: JsValue) -> JsValue = "webapi_ReadableStreamIteratorOptions" "get_preventCancel"