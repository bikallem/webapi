///|
fn image_data_settings_ffi(
  color_space : JsValue,
  pixel_format : JsValue,
) -> ImageDataSettings = "webapi_ImageDataSettings" "new"

///|
fn image_data_settings_empty_ffi() -> ImageDataSettings = "webapi_Dictionary" "empty"
