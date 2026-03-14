// Do not edit. This file is generated.
// MoonBit type: ImageDataSettings
// Specifications: html.idl

/// [ImageDataSettings](https://developer.mozilla.org/en-US/docs/Web/API/ImageDataSettings)
#external
pub type ImageDataSettings

pub impl TJsValue for ImageDataSettings with to_js(self: ImageDataSettings) -> JsValue = "%identity"

pub impl FromJsAny for ImageDataSettings with from_js_any(value : JsAny) -> ImageDataSettings = "%identity"

pub fn ImageDataSettings::new(color_space? : PredefinedColorSpace, 
pixel_format? : ImageDataPixelFormat) -> ImageDataSettings {
  image_data_settings_ffi(opt_to_js(color_space), opt_to_js(pixel_format))
}

pub fn ImageDataSettings::empty() -> ImageDataSettings { image_data_settings_empty_ffi() }

pub fn ImageDataSettings::color_space(self : ImageDataSettings) -> PredefinedColorSpace? {
  image_data_settings_get_color_space_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ImageDataSettings::pixel_format(self : ImageDataSettings) -> ImageDataPixelFormat? {
  image_data_settings_get_pixel_format_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn image_data_settings_ffi(color_space: JsValue, pixel_format: JsValue) -> ImageDataSettings = 
#|(colorSpace, pixelFormat) => {
#|  const obj = {};
#|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
#|  if (pixelFormat !== undefined) obj.pixelFormat = pixelFormat;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn image_data_settings_empty_ffi() -> ImageDataSettings = "() => {}"

#cfg(target="js")
extern "js" fn image_data_settings_get_color_space_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorSpace"

#cfg(target="js")
extern "js" fn image_data_settings_get_pixel_format_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pixelFormat"

#cfg(target="wasm-gc")
fn image_data_settings_ffi(color_space: JsValue, pixel_format: JsValue) -> ImageDataSettings = "webapi_ImageDataSettings" "new"

#cfg(target="wasm-gc")
fn image_data_settings_empty_ffi() -> ImageDataSettings = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn image_data_settings_get_color_space_ffi(obj: JsValue) -> JsValue = "webapi_ImageDataSettings" "get_colorSpace"

#cfg(target="wasm-gc")
fn image_data_settings_get_pixel_format_ffi(obj: JsValue) -> JsValue = "webapi_ImageDataSettings" "get_pixelFormat"