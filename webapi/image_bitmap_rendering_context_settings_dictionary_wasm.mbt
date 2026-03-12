///|
fn image_bitmap_rendering_context_settings_ffi(
  alpha : JsValue,
) -> ImageBitmapRenderingContextSettings = "webapi_ImageBitmapRenderingContextSettings" "new"

///|
fn image_bitmap_rendering_context_settings_empty_ffi() -> ImageBitmapRenderingContextSettings = "webapi_Dictionary" "empty"

///|
fn image_bitmap_rendering_context_settings_get_alpha_ffi(
  obj : JsValue,
) -> JsValue = "webapi_ImageBitmapRenderingContextSettings" "get_alpha"
