// Do not edit. This file is generated.
// MoonBit type: ImageDataSettings
// Specifications: html.idl

///|
/// [ImageDataSettings](https://developer.mozilla.org/en-US/docs/Web/API/ImageDataSettings)
#external
pub type ImageDataSettings

///|
pub impl TJsValue for ImageDataSettings with to_js(self : ImageDataSettings) -> JsValue = "%identity"

///|
extern "js" fn image_data_settings_ffi(
  color_space : JsValue,
  pixel_format : JsValue,
) -> ImageDataSettings =
  #|(colorSpace, pixelFormat) => {
  #|  const obj = {};
  #|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
  #|  if (pixelFormat !== undefined) obj.pixelFormat = pixelFormat;
  #|  return obj;
  #|}

///|
pub fn ImageDataSettings::new(
  color_space? : PredefinedColorSpace,
  pixel_format? : ImageDataPixelFormat = ImageDataPixelFormat::RgbaUnorm8,
) -> ImageDataSettings {
  image_data_settings_ffi(opt_to_js(color_space), TJsValue::to_js(pixel_format))
}

///|
extern "js" fn image_data_settings_empty_ffi() -> ImageDataSettings = "() => {}"

///|
pub fn ImageDataSettings::empty() -> ImageDataSettings {
  image_data_settings_empty_ffi()
}
