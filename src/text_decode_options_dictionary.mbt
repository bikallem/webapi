// Do not edit. This file is generated.
// MoonBit type: TextDecodeOptions
// Specifications: encoding.idl

/// [TextDecodeOptions](https://developer.mozilla.org/en-US/docs/Web/API/TextDecodeOptions)
#external
pub type TextDecodeOptions

pub impl TJsValue for TextDecodeOptions with to_js(self: TextDecodeOptions) -> JsValue = "%identity"

pub impl FromJsAny for TextDecodeOptions with from_js_any(value : JsAny) -> TextDecodeOptions = "%identity"

pub fn TextDecodeOptions::new(stream? : Bool) -> TextDecodeOptions {
  text_decode_options_ffi(opt_to_js(stream))
}

pub fn TextDecodeOptions::empty() -> TextDecodeOptions { text_decode_options_empty_ffi() }

pub fn TextDecodeOptions::stream(self : TextDecodeOptions) -> Bool? {
  text_decode_options_get_stream_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn text_decode_options_ffi(stream: JsValue) -> TextDecodeOptions = 
#|(stream) => {
#|  const obj = {};
#|  if (stream !== undefined) obj.stream = stream;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn text_decode_options_empty_ffi() -> TextDecodeOptions = "() => {}"

#cfg(target="js")
extern "js" fn text_decode_options_get_stream_ffi(obj: JsValue) -> JsValue = "(obj) => obj.stream"

#cfg(target="wasm-gc")
fn text_decode_options_ffi(stream: JsValue) -> TextDecodeOptions = "webapi_TextDecodeOptions" "new"

#cfg(target="wasm-gc")
fn text_decode_options_empty_ffi() -> TextDecodeOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn text_decode_options_get_stream_ffi(obj: JsValue) -> JsValue = "webapi_TextDecodeOptions" "get_stream"