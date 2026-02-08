///|
extern "js" fn image_data_new_ffi(
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "(sw, sh, settings) => new ImageData(sw, sh, settings)"

///|
extern "js" fn image_data_new_2_ffi(
  data : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "(data, sw, sh, settings) => new ImageData(data, sw, sh, settings)"

///|
extern "js" fn image_data_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn image_data_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn image_data_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
extern "js" fn image_data_pixel_format_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pixelFormat"

///|
extern "js" fn image_data_color_space_ffi(obj : JsValue) -> JsValue = "(obj) => obj.colorSpace"
