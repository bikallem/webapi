///|
fn image_data_settings_ffi(
  color_space : JsValue,
  pixel_format : JsValue,
) -> ImageDataSettings = "webapi_ImageDataSettings" "new"

///|
fn image_data_settings_empty_ffi() -> ImageDataSettings = "webapi_Dictionary" "empty"

///|
fn image_data_settings_get_color_space_ffi(obj : JsValue) -> JsValue = "webapi_ImageDataSettings" "get_colorSpace"

///|
fn image_data_settings_get_pixel_format_ffi(obj : JsValue) -> JsValue = "webapi_ImageDataSettings" "get_pixelFormat"
