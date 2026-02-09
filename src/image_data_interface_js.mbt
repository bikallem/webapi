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
extern "js" fn image_data_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn image_data_width_ffi(obj : JsValue) -> UInt {
  image_data_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn image_data_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn image_data_height_ffi(obj : JsValue) -> UInt {
  image_data_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn image_data_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
fn image_data_data_ffi(obj : JsValue) -> ImageDataArray {
  image_data_data_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn image_data_pixel_format_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pixelFormat"

///|
fn image_data_pixel_format_ffi(obj : JsValue) -> ImageDataPixelFormat {
  image_data_pixel_format_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn image_data_color_space_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.colorSpace"

///|
fn image_data_color_space_ffi(obj : JsValue) -> PredefinedColorSpace {
  image_data_color_space_ffi_js(obj).unsafe_cast()
}
