// Auto-generated MoonBit bindings for ImageDataSettings dictionary
// Do not edit manually

#external
pub type ImageDataSettings

pub impl TJsValue for ImageDataSettings with to_js(self: ImageDataSettings) -> JsValue = "%identity"


fn image_data_settings_ffi(color_space : JsValue, pixel_format : JsValue) -> ImageDataSettings = "webapi_ImageDataSettings" "new"


pub fn ImageDataSettings::new(
  color_space? : PredefinedColorSpace,
  pixel_format? : ImageDataPixelFormat? : ImageDataPixelFormat = "rgba-unorm8") -> ImageDataSettings {
    image_data_settings_ffi(
      opt_to_js(color_space)
     ,TJsValue::to_js(pixel_format)
    )
}


pub fn ImageDataSettings::empty() -> ImageDataSettings = "webapi_Dictionary" "empty"