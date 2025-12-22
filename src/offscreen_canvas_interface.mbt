///|
#external
pub type OffscreenCanvas

///|
pub impl TJsValue for OffscreenCanvas with to_js(self : OffscreenCanvas) -> JsValue = "%identity"

///|
pub fn[T : TOffscreenCanvas] OffscreenCanvas::into(self : OffscreenCanvas) -> T = "%identity"

///|
pub impl TOffscreenCanvas for OffscreenCanvas

///|
pub impl TEventTarget for OffscreenCanvas

///|
extern "js" fn offscreen_canvas_new_ffi(
  width : JsValue,
  height : JsValue,
) -> OffscreenCanvas = "(width, height) => new OffscreenCanvas(width, height)"

///|
pub fn OffscreenCanvas::new(width : UInt64, height : UInt64) -> OffscreenCanvas {
  offscreen_canvas_new_ffi(TJsValue::to_js(width), TJsValue::to_js(height))
}

///|
pub trait TOffscreenCanvas: TEventTarget {
  get_context(
    self : Self,
    context_id : OffscreenRenderingContextId,
    options? : JsValue,
  ) -> OffscreenRenderingContext = _
  transfer_to_image_bitmap(self : Self) -> ImageBitmap = _
  convert_to_blob(self : Self, options? : ImageEncodeOptions) -> JsValue = _
}

///|
extern "js" fn offscreen_canvas_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> OffscreenRenderingContext = "(obj, context_id, options) => obj.getContext(obj, context_id, options)"

///|
impl TOffscreenCanvas with get_context(
  self : Self,
  context_id : OffscreenRenderingContextId,
  options? : JsValue = JsValue::null(),
) -> OffscreenRenderingContext {
  offscreen_canvas_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn offscreen_canvas_transfer_to_image_bitmap_ffi(
  obj : JsValue,
) -> ImageBitmap = "(obj) => obj.transferToImageBitmap(obj)"

///|
impl TOffscreenCanvas with transfer_to_image_bitmap(self : Self) -> ImageBitmap {
  offscreen_canvas_transfer_to_image_bitmap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn offscreen_canvas_convert_to_blob_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.convertToBlob(obj, options)"

///|
impl TOffscreenCanvas with convert_to_blob(
  self : Self,
  options? : ImageEncodeOptions = ImageEncodeOptions::empty(),
) -> JsValue {
  offscreen_canvas_convert_to_blob_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}
