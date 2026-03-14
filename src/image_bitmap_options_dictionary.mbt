// Do not edit. This file is generated.
// MoonBit type: ImageBitmapOptions
// Specifications: html.idl

/// [ImageBitmapOptions](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapOptions)
#external
pub type ImageBitmapOptions

pub impl TJsValue for ImageBitmapOptions with to_js(self: ImageBitmapOptions) -> JsValue = "%identity"

pub impl FromJsAny for ImageBitmapOptions with from_js_any(value : JsAny) -> ImageBitmapOptions = "%identity"

pub fn ImageBitmapOptions::new(image_orientation? : ImageOrientation, 
premultiply_alpha? : PremultiplyAlpha, 
color_space_conversion? : ColorSpaceConversion, 
resize_width? : UInt, 
resize_height? : UInt, 
resize_quality? : ResizeQuality) -> ImageBitmapOptions {
  image_bitmap_options_ffi(opt_to_js(image_orientation), opt_to_js(premultiply_alpha), opt_to_js(color_space_conversion), opt_to_js(resize_width), opt_to_js(resize_height), opt_to_js(resize_quality))
}

pub fn ImageBitmapOptions::empty() -> ImageBitmapOptions { image_bitmap_options_empty_ffi() }

pub fn ImageBitmapOptions::image_orientation(self : ImageBitmapOptions) -> ImageOrientation? {
  image_bitmap_options_get_image_orientation_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ImageBitmapOptions::premultiply_alpha(self : ImageBitmapOptions) -> PremultiplyAlpha? {
  image_bitmap_options_get_premultiply_alpha_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ImageBitmapOptions::color_space_conversion(self : ImageBitmapOptions) -> ColorSpaceConversion? {
  image_bitmap_options_get_color_space_conversion_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ImageBitmapOptions::resize_width(self : ImageBitmapOptions) -> UInt? {
  image_bitmap_options_get_resize_width_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ImageBitmapOptions::resize_height(self : ImageBitmapOptions) -> UInt? {
  image_bitmap_options_get_resize_height_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ImageBitmapOptions::resize_quality(self : ImageBitmapOptions) -> ResizeQuality? {
  image_bitmap_options_get_resize_quality_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn image_bitmap_options_ffi(image_orientation: JsValue, premultiply_alpha: JsValue, color_space_conversion: JsValue, resize_width: JsValue, resize_height: JsValue, resize_quality: JsValue) -> ImageBitmapOptions = 
#|(imageOrientation, premultiplyAlpha, colorSpaceConversion, resizeWidth, resizeHeight, resizeQuality) => {
#|  const obj = {};
#|  if (imageOrientation !== undefined) obj.imageOrientation = imageOrientation;
#|  if (premultiplyAlpha !== undefined) obj.premultiplyAlpha = premultiplyAlpha;
#|  if (colorSpaceConversion !== undefined) obj.colorSpaceConversion = colorSpaceConversion;
#|  if (resizeWidth !== undefined) obj.resizeWidth = resizeWidth;
#|  if (resizeHeight !== undefined) obj.resizeHeight = resizeHeight;
#|  if (resizeQuality !== undefined) obj.resizeQuality = resizeQuality;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn image_bitmap_options_empty_ffi() -> ImageBitmapOptions = "() => {}"

#cfg(target="js")
extern "js" fn image_bitmap_options_get_image_orientation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.imageOrientation"

#cfg(target="js")
extern "js" fn image_bitmap_options_get_premultiply_alpha_ffi(obj: JsValue) -> JsValue = "(obj) => obj.premultiplyAlpha"

#cfg(target="js")
extern "js" fn image_bitmap_options_get_color_space_conversion_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorSpaceConversion"

#cfg(target="js")
extern "js" fn image_bitmap_options_get_resize_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.resizeWidth"

#cfg(target="js")
extern "js" fn image_bitmap_options_get_resize_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.resizeHeight"

#cfg(target="js")
extern "js" fn image_bitmap_options_get_resize_quality_ffi(obj: JsValue) -> JsValue = "(obj) => obj.resizeQuality"

#cfg(target="wasm-gc")
fn image_bitmap_options_ffi(image_orientation: JsValue, premultiply_alpha: JsValue, color_space_conversion: JsValue, resize_width: JsValue, resize_height: JsValue, resize_quality: JsValue) -> ImageBitmapOptions = "webapi_ImageBitmapOptions" "new"

#cfg(target="wasm-gc")
fn image_bitmap_options_empty_ffi() -> ImageBitmapOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn image_bitmap_options_get_image_orientation_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_imageOrientation"

#cfg(target="wasm-gc")
fn image_bitmap_options_get_premultiply_alpha_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_premultiplyAlpha"

#cfg(target="wasm-gc")
fn image_bitmap_options_get_color_space_conversion_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_colorSpaceConversion"

#cfg(target="wasm-gc")
fn image_bitmap_options_get_resize_width_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_resizeWidth"

#cfg(target="wasm-gc")
fn image_bitmap_options_get_resize_height_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_resizeHeight"

#cfg(target="wasm-gc")
fn image_bitmap_options_get_resize_quality_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_resizeQuality"