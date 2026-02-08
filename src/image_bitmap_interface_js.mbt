extern "js" fn image_bitmap_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn image_bitmap_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.height"

extern "js" fn image_bitmap_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"