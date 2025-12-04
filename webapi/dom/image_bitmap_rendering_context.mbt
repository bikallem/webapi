// Auto-generated MoonBit bindings for ImageBitmapRenderingContext

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=(Window,Worker)]
// interface ImageBitmapRenderingContext {
//   readonly attribute (HTMLCanvasElement or OffscreenCanvas) canvas;
//   undefined transferFromImageBitmap(ImageBitmap? bitmap);
// };

///|
#external
pub type ImageBitmapRenderingContext

///|
pub trait TImageBitmapRenderingContext: TJsValue {
  canvas(self : Self) -> JsValue = _
  transfer_from_image_bitmap(self : Self, bitmap : JsValue) -> Unit = _
}

///|
pub impl TImageBitmapRenderingContext for ImageBitmapRenderingContext

///|
pub impl TJsValue for ImageBitmapRenderingContext with to_js(
  self : ImageBitmapRenderingContext,
) -> JsValue = "%identity"

///|
pub fn ImageBitmapRenderingContext::null() -> ImageBitmapRenderingContext = "JsValue" "null"

///|
pub fn ImageBitmapRenderingContext::is_null(
  self : ImageBitmapRenderingContext,
) -> Bool = "JsValue" "isNull"

///|
fn image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
  obj : JsValue,
  bitmap : JsValue,
) -> Unit = "webapi_ImageBitmapRenderingContext" "transferFromImageBitmap"

///|
impl TImageBitmapRenderingContext with transfer_from_image_bitmap(
  self : Self,
  bitmap : JsValue,
) -> Unit {
  image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
    TJsValue::to_js(self),
    bitmap,
  )
}

///|
fn image_bitmap_rendering_context_canvas_ffi(obj : JsValue) -> JsValue = "webapi_ImageBitmapRenderingContext" "canvas"

///|
impl TImageBitmapRenderingContext with canvas(self : Self) -> JsValue {
  image_bitmap_rendering_context_canvas_ffi(self.to_js())
}
