extern "js" fn image_bitmap_rendering_context_settings_ffi(alpha: JsValue) -> ImageBitmapRenderingContextSettings = 
#|(alpha) => {
#|  const obj = {};
#|  if (alpha !== undefined) obj.alpha = alpha;
#|  return obj;
#|}

extern "js" fn image_bitmap_rendering_context_settings_empty_ffi() -> ImageBitmapRenderingContextSettings = "() => {}"