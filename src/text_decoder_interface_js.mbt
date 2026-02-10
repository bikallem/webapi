extern "js" fn text_decoder_new_ffi(label: JsValue, options: JsValue) -> TextDecoder = "(label, options) => new TextDecoder(label, options)"

extern "js" fn text_decoder_decode_ffi_js(obj: JsValue, input: JsValue, options: JsValue) -> JsValue = "(obj, input, options) => obj.decode(input, options)"

///|
fn text_decoder_decode_ffi(obj: JsValue, input: JsValue, options: JsValue) -> String {
  text_decoder_decode_ffi_js(obj, input, options).unsafe_cast()
}

extern "js" fn text_decoder_encoding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.encoding"

///|
fn text_decoder_encoding_ffi(obj: JsValue) -> String {
  text_decoder_encoding_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_decoder_fatal_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fatal"

///|
fn text_decoder_fatal_ffi(obj: JsValue) -> Bool {
  text_decoder_fatal_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_decoder_ignore_bom_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ignoreBOM"

///|
fn text_decoder_ignore_bom_ffi(obj: JsValue) -> Bool {
  text_decoder_ignore_bom_ffi_js(obj).unsafe_cast()
}