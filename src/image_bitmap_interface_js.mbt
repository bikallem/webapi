///|
extern "js" fn image_bitmap_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn image_bitmap_width_ffi(obj : JsValue) -> UInt {
  image_bitmap_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn image_bitmap_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn image_bitmap_height_ffi(obj : JsValue) -> UInt {
  image_bitmap_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn image_bitmap_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"
