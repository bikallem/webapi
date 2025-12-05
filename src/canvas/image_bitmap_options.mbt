// Auto-generated MoonBit bindings for ImageBitmapOptions dictionary

// Do not edit manually

///|
#external
pub type ImageBitmapOptions

///|
pub impl TJsValue for ImageBitmapOptions with to_js(self : ImageBitmapOptions) -> JsValue = "%identity"

///|
fn image_bitmap_options_ffi(
  image_orientation : JsValue,
  premultiply_alpha : JsValue,
  color_space_conversion : JsValue,
  resize_width : JsValue,
  resize_height : JsValue,
  resize_quality : JsValue,
) -> ImageBitmapOptions = "webapi_ImageBitmapOptions" "new"

///|
pub fn ImageBitmapOptions::new(
  image_orientation? : ImageOrientation,
  premultiply_alpha? : PremultiplyAlpha,
  color_space_conversion? : ColorSpaceConversion,
  resize_width? : UInt,
  resize_height? : UInt,
  resize_quality? : ResizeQuality,
) -> ImageBitmapOptions {
  let image_orientation_js = opt_to_js(image_orientation)
  let premultiply_alpha_js = opt_to_js(premultiply_alpha)
  let color_space_conversion_js = opt_to_js(color_space_conversion)
  let resize_width_js = opt_to_js(resize_width)
  let resize_height_js = opt_to_js(resize_height)
  let resize_quality_js = opt_to_js(resize_quality)
  image_bitmap_options_ffi(
    image_orientation_js, premultiply_alpha_js, color_space_conversion_js, resize_width_js,
    resize_height_js, resize_quality_js,
  )
}

///|
pub fn ImageBitmapOptions::empty() -> ImageBitmapOptions = "webapi_Dictionary" "empty"
