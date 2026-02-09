///|
extern "js" fn image_bitmap_rendering_context_canvas_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.canvas"

///|
fn image_bitmap_rendering_context_canvas_ffi(
  obj : JsValue,
) -> ImageBitmapRenderingContextCanvas {
  image_bitmap_rendering_context_canvas_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
  obj : JsValue,
  bitmap : JsValue,
) -> Unit = "(obj, bitmap) => obj.transferFromImageBitmap(bitmap)"
