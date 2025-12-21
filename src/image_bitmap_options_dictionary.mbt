///|
#external
pub type ImageBitmapOptions

///|
pub impl TJsValue for ImageBitmapOptions with to_js(self : ImageBitmapOptions) -> JsValue = "%identity"

///|
extern "js" fn image_bitmap_options_ffi(
  image_orientation : JsValue,
  premultiply_alpha : JsValue,
  color_space_conversion : JsValue,
  resize_width : JsValue,
  resize_height : JsValue,
  resize_quality : JsValue,
) -> ImageBitmapOptions =
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
extern "js" fn image_bitmap_options_empty_ffi() -> ImageBitmapOptions = "() => {}"

///|
pub fn ImageBitmapOptions::empty() -> ImageBitmapOptions {
  image_bitmap_options_empty_ffi()
}
