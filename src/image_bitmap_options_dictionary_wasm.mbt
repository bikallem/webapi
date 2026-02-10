fn image_bitmap_options_ffi(image_orientation: JsValue, premultiply_alpha: JsValue, color_space_conversion: JsValue, resize_width: JsValue, resize_height: JsValue, resize_quality: JsValue) -> ImageBitmapOptions = "webapi_ImageBitmapOptions" "new"

fn image_bitmap_options_empty_ffi() -> ImageBitmapOptions = "webapi_Dictionary" "empty"