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
pub impl FromJsAny for ImageDataSettings with from_js_any(value : JsAny) -> ImageDataSettings = "%identity"

///|
pub fn ImageDataSettings::new(
  color_space? : PredefinedColorSpace,
  pixel_format? : ImageDataPixelFormat,
) -> ImageDataSettings {
  image_data_settings_ffi(opt_to_js(color_space), opt_to_js(pixel_format))
}

///|
pub fn ImageDataSettings::empty() -> ImageDataSettings {
  image_data_settings_empty_ffi()
}

///|
pub fn ImageDataSettings::color_space(
  self : ImageDataSettings,
) -> PredefinedColorSpace? {
  let result = image_data_settings_get_color_space_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ImageDataSettings::pixel_format(
  self : ImageDataSettings,
) -> ImageDataPixelFormat? {
  let result = image_data_settings_get_pixel_format_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
