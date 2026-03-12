///|
fn image_bitmap_width_ffi(obj : JsValue) -> UInt = "webapi_ImageBitmap" "get_width"

///|
fn image_bitmap_height_ffi(obj : JsValue) -> UInt = "webapi_ImageBitmap" "get_height"

///|
fn image_bitmap_close_ffi(obj : JsValue) -> Unit = "webapi_ImageBitmap" "close"
