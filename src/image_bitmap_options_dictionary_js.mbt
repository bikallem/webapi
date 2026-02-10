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

extern "js" fn image_bitmap_options_empty_ffi() -> ImageBitmapOptions = "() => {}"