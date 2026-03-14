// Do not edit. This file is generated.
// MoonBit type: ImageEncodeOptions
// Specifications: html.idl

/// [ImageEncodeOptions](https://developer.mozilla.org/en-US/docs/Web/API/ImageEncodeOptions)
#external
pub type ImageEncodeOptions

pub impl TJsValue for ImageEncodeOptions with to_js(self: ImageEncodeOptions) -> JsValue = "%identity"

pub impl FromJsAny for ImageEncodeOptions with from_js_any(value : JsAny) -> ImageEncodeOptions = "%identity"

pub fn ImageEncodeOptions::new(type_? : String, 
quality? : Double) -> ImageEncodeOptions {
  image_encode_options_ffi(opt_to_js(type_), opt_to_js(quality))
}

pub fn ImageEncodeOptions::empty() -> ImageEncodeOptions { image_encode_options_empty_ffi() }

pub fn ImageEncodeOptions::type_(self : ImageEncodeOptions) -> String? {
  image_encode_options_get_type_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ImageEncodeOptions::quality(self : ImageEncodeOptions) -> Double? {
  image_encode_options_get_quality_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn image_encode_options_ffi(type_: JsValue, quality: JsValue) -> ImageEncodeOptions = 
#|(type, quality) => {
#|  const obj = {};
#|  if (type !== undefined) obj.type = type;
#|  if (quality !== undefined) obj.quality = quality;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn image_encode_options_empty_ffi() -> ImageEncodeOptions = "() => {}"

#cfg(target="js")
extern "js" fn image_encode_options_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

#cfg(target="js")
extern "js" fn image_encode_options_get_quality_ffi(obj: JsValue) -> JsValue = "(obj) => obj.quality"

#cfg(target="wasm-gc")
fn image_encode_options_ffi(type_: JsValue, quality: JsValue) -> ImageEncodeOptions = "webapi_ImageEncodeOptions" "new"

#cfg(target="wasm-gc")
fn image_encode_options_empty_ffi() -> ImageEncodeOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn image_encode_options_get_type_ffi(obj: JsValue) -> JsValue = "webapi_ImageEncodeOptions" "get_type"

#cfg(target="wasm-gc")
fn image_encode_options_get_quality_ffi(obj: JsValue) -> JsValue = "webapi_ImageEncodeOptions" "get_quality"