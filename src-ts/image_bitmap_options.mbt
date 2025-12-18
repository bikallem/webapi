// Auto-generated MoonBit bindings for ImageBitmapOptions dictionary

// Do not edit manually

///|
#external
pub type ImageBitmapOptions

///|
pub impl TJsValue for ImageBitmapOptions with to_js(self : ImageBitmapOptions) -> JsValue = "%identity"

///|
fn image_bitmap_options_ffi(image_orientation : JsValue, premultiply_alpha : JsValue, color_space_conversion : JsValue, resize_width : JsValue, resize_height : JsValue, resize_quality : JsValue) -> ImageBitmapOptions = "webapi_ImageBitmapOptions" "new"

///|
pub fn ImageBitmapOptions::new(
  image_orientation? : ImageOrientation = ImageOrientation::FromImage,
  premultiply_alpha? : PremultiplyAlpha = PremultiplyAlpha::Default,
  color_space_conversion? : ColorSpaceConversion = ColorSpaceConversion::Default,
  resize_width? : UInt,
  resize_height? : UInt,
  resize_quality? : ResizeQuality = ResizeQuality::Low
) -> ImageBitmapOptions {
  let resize_width_js = opt_to_js(resize_width)
  let resize_height_js = opt_to_js(resize_height)
  image_bitmap_options_ffi(TJsValue::to_js(image_orientation), TJsValue::to_js(premultiply_alpha), TJsValue::to_js(color_space_conversion), resize_width_js, resize_height_js, TJsValue::to_js(resize_quality))
}

///|
pub fn ImageBitmapOptions::empty() -> ImageBitmapOptions = "webapi_Dictionary" "empty"