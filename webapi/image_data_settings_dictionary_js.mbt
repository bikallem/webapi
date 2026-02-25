///|
extern "js" fn image_data_settings_ffi(
  color_space : JsValue,
  pixel_format : JsValue,
) -> ImageDataSettings =
  #|(colorSpace, pixelFormat) => {
  #|  const obj = {};
  #|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
  #|  if (pixelFormat !== undefined) obj.pixelFormat = pixelFormat;
  #|  return obj;
  #|}

///|
extern "js" fn image_data_settings_empty_ffi() -> ImageDataSettings = "() => {}"

///|
extern "js" fn image_data_settings_get_color_space_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.colorSpace"

///|
extern "js" fn image_data_settings_get_pixel_format_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pixelFormat"
