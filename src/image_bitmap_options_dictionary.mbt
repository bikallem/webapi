// Auto-generated MoonBit bindings for ImageBitmapOptions dictionary
// Do not edit manually

#external
pub type ImageBitmapOptions

pub impl TJsValue for ImageBitmapOptions with to_js(self: ImageBitmapOptions) -> JsValue = "%identity"


fn image_bitmap_options_ffi(image_orientation : JsValue, premultiply_alpha : JsValue, color_space_conversion : JsValue, resize_width : JsValue, resize_height : JsValue, resize_quality : JsValue) -> ImageBitmapOptions = "webapi_ImageBitmapOptions" "new"


pub fn ImageBitmapOptions::new(
  image_orientation? : ImageOrientation? : ImageOrientation = "from-image",
  premultiply_alpha? : PremultiplyAlpha? : PremultiplyAlpha = "default",
  color_space_conversion? : ColorSpaceConversion? : ColorSpaceConversion = "default",
  resize_width? : UInt,
  resize_height? : UInt,
  resize_quality? : ResizeQuality? : ResizeQuality = "low") -> ImageBitmapOptions {
    image_bitmap_options_ffi(
      TJsValue::to_js(image_orientation)
     ,TJsValue::to_js(premultiply_alpha)
     ,TJsValue::to_js(color_space_conversion)
     ,opt_to_js(resize_width)
     ,opt_to_js(resize_height)
     ,TJsValue::to_js(resize_quality)
    )
}


pub fn ImageBitmapOptions::empty() -> ImageBitmapOptions = "webapi_Dictionary" "empty"