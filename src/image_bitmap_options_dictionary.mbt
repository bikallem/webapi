// Do not edit. This file is generated.
// MoonBit type: ImageBitmapOptions
// Specifications: html.idl

///|
/// [ImageBitmapOptions](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapOptions)
#external
pub type ImageBitmapOptions

///|
pub impl TJsValue for ImageBitmapOptions with to_js(self : ImageBitmapOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageBitmapOptions with from_js_any(value : JsAny) -> ImageBitmapOptions = "%identity"

///|
pub fn ImageBitmapOptions::new(
  image_orientation? : ImageOrientation = ImageOrientation::FromImage,
  premultiply_alpha? : PremultiplyAlpha = PremultiplyAlpha::Default,
  color_space_conversion? : ColorSpaceConversion = ColorSpaceConversion::Default,
  resize_width? : UInt,
  resize_height? : UInt,
  resize_quality? : ResizeQuality = ResizeQuality::Low,
) -> ImageBitmapOptions {
  image_bitmap_options_ffi(
    TJsValue::to_js(image_orientation),
    TJsValue::to_js(premultiply_alpha),
    TJsValue::to_js(color_space_conversion),
    opt_to_js(resize_width),
    opt_to_js(resize_height),
    TJsValue::to_js(resize_quality),
  )
}

///|
pub fn ImageBitmapOptions::empty() -> ImageBitmapOptions {
  image_bitmap_options_empty_ffi()
}
