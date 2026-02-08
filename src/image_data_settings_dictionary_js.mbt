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
