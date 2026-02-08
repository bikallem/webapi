///|
fn image_data_new_ffi(
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "webapi_ImageData" "new"

///|
fn image_data_new_2_ffi(
  data : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "webapi_ImageData" "new"

///|
fn image_data_width_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "get_width"

///|
fn image_data_height_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "get_height"

///|
fn image_data_data_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "get_data"

///|
fn image_data_pixel_format_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "get_pixelFormat"

///|
fn image_data_color_space_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "get_colorSpace"
