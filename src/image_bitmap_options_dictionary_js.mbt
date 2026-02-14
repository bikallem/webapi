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
extern "js" fn image_bitmap_options_empty_ffi() -> ImageBitmapOptions = "() => {}"

///|
extern "js" fn image_bitmap_options_get_image_orientation_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.imageOrientation"

///|
extern "js" fn image_bitmap_options_get_premultiply_alpha_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.premultiplyAlpha"

///|
extern "js" fn image_bitmap_options_get_color_space_conversion_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.colorSpaceConversion"

///|
extern "js" fn image_bitmap_options_get_resize_width_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.resizeWidth"

///|
extern "js" fn image_bitmap_options_get_resize_height_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.resizeHeight"

///|
extern "js" fn image_bitmap_options_get_resize_quality_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.resizeQuality"
