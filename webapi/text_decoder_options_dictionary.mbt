// Do not edit. This file is generated.
// MoonBit type: TextDecoderOptions
// Specifications: encoding.idl

///|
/// [TextDecoderOptions](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderOptions)
#external
pub type TextDecoderOptions

///|
pub impl TJsValue for TextDecoderOptions with to_js(self : TextDecoderOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextDecoderOptions with from_js_any(value : JsAny) -> TextDecoderOptions = "%identity"

///|
pub fn TextDecoderOptions::new(
  fatal? : Bool,
  ignore_bom? : Bool,
) -> TextDecoderOptions {
  text_decoder_options_ffi(opt_to_js(fatal), opt_to_js(ignore_bom))
}

///|
pub fn TextDecoderOptions::empty() -> TextDecoderOptions {
  text_decoder_options_empty_ffi()
}

///|
pub fn TextDecoderOptions::fatal(self : TextDecoderOptions) -> Bool? {
  text_decoder_options_get_fatal_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TextDecoderOptions::ignore_bom(self : TextDecoderOptions) -> Bool? {
  text_decoder_options_get_ignore_bom_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn text_decoder_options_ffi(
  fatal : JsValue,
  ignore_bom : JsValue,
) -> TextDecoderOptions =
  #|(fatal, ignoreBOM) => {
  #|  const obj = {};
  #|  if (fatal !== undefined) obj.fatal = fatal;
  #|  if (ignoreBOM !== undefined) obj.ignoreBOM = ignoreBOM;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn text_decoder_options_empty_ffi() -> TextDecoderOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn text_decoder_options_get_fatal_ffi(obj : JsValue) -> JsValue = "(obj) => obj.fatal"

///|
#cfg(target="js")
extern "js" fn text_decoder_options_get_ignore_bom_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreBOM"

///|
#cfg(target="wasm-gc")
fn text_decoder_options_ffi(
  fatal : JsValue,
  ignore_bom : JsValue,
) -> TextDecoderOptions = "webapi_TextDecoderOptions" "new"

///|
#cfg(target="wasm-gc")
fn text_decoder_options_empty_ffi() -> TextDecoderOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn text_decoder_options_get_fatal_ffi(obj : JsValue) -> JsValue = "webapi_TextDecoderOptions" "get_fatal"

///|
#cfg(target="wasm-gc")
fn text_decoder_options_get_ignore_bom_ffi(obj : JsValue) -> JsValue = "webapi_TextDecoderOptions" "get_ignoreBOM"
