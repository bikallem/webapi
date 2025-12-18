// Auto-generated MoonBit bindings for ImageDataSettings dictionary

// Do not edit manually

///|
#external
pub type ImageDataSettings

///|
pub impl TJsValue for ImageDataSettings with to_js(self : ImageDataSettings) -> JsValue = "%identity"

///|
fn image_data_settings_ffi(
  color_space : JsValue,
  pixel_format : JsValue,
) -> ImageDataSettings = "webapi_ImageDataSettings" "new"

///|
pub fn ImageDataSettings::new(
  color_space? : PredefinedColorSpace,
  pixel_format? : ImageDataPixelFormat = ImageDataPixelFormat::RgbaUnorm8,
) -> ImageDataSettings {
  let color_space_js = opt_to_js(color_space)
  image_data_settings_ffi(color_space_js, TJsValue::to_js(pixel_format))
}

///|
pub fn ImageDataSettings::empty() -> ImageDataSettings = "webapi_Dictionary" "empty"
