fn image_bitmap_options_ffi(image_orientation: JsValue, premultiply_alpha: JsValue, color_space_conversion: JsValue, resize_width: JsValue, resize_height: JsValue, resize_quality: JsValue) -> ImageBitmapOptions = "webapi_ImageBitmapOptions" "new"

fn image_bitmap_options_empty_ffi() -> ImageBitmapOptions = "webapi_Dictionary" "empty"

fn image_bitmap_options_get_image_orientation_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_imageOrientation"

fn image_bitmap_options_get_premultiply_alpha_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_premultiplyAlpha"

fn image_bitmap_options_get_color_space_conversion_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_colorSpaceConversion"

fn image_bitmap_options_get_resize_width_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_resizeWidth"

fn image_bitmap_options_get_resize_height_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_resizeHeight"

fn image_bitmap_options_get_resize_quality_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapOptions" "get_resizeQuality"