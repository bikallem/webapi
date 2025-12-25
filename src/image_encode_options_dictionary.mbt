// Do not edit. This file is generated.
// MoonBit type: ImageEncodeOptions
// Specifications: html.idl

///|
#external
pub type ImageEncodeOptions

///|
pub impl TJsValue for ImageEncodeOptions with to_js(self : ImageEncodeOptions) -> JsValue = "%identity"

///|
extern "js" fn image_encode_options_ffi(
  type_ : JsValue,
  quality : JsValue,
) -> ImageEncodeOptions =
  #|(type, quality) => {
  #|  const obj = {};
  #|  if (type !== undefined) obj.type = type;
  #|  if (quality !== undefined) obj.quality = quality;
  #|  return obj;
  #|}

///|
pub fn ImageEncodeOptions::new(
  type_? : String = "image/png",
  quality? : Double,
) -> ImageEncodeOptions {
  image_encode_options_ffi(TJsValue::to_js(type_), opt_to_js(quality))
}

///|
extern "js" fn image_encode_options_empty_ffi() -> ImageEncodeOptions = "() => {}"

///|
pub fn ImageEncodeOptions::empty() -> ImageEncodeOptions {
  image_encode_options_empty_ffi()
}
