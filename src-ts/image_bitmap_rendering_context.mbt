// Auto-generated MoonBit bindings for ImageBitmapRenderingContext

// Do not edit manually

///|
#external
pub type ImageBitmapRenderingContext

///|
pub trait TImageBitmapRenderingContext: TJsValue {
  canvas(self : Self) -> Canvas = _
  transfer_from_image_bitmap(self : Self, bitmap : &TImageBitmap) -> Unit = _
}

///|
pub impl TImageBitmapRenderingContext for ImageBitmapRenderingContext

///|
pub impl TJsValue for ImageBitmapRenderingContext with to_js(self : ImageBitmapRenderingContext) -> JsValue = "%identity"

///|
fn image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(obj : JsValue, bitmap : JsValue) -> Unit = "webapi_ImageBitmapRenderingContext" "transferFromImageBitmap"

///|
impl TImageBitmapRenderingContext with transfer_from_image_bitmap(self : Self, bitmap : &TImageBitmap) -> Unit {
  image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(TJsValue::to_js(self), TJsValue::to_js(bitmap))
}

///|
fn image_bitmap_rendering_context_canvas_ffi(obj : JsValue) -> JsValue = "webapi_ImageBitmapRenderingContext" "canvas"

///|
impl TImageBitmapRenderingContext with canvas(self : Self) -> Canvas {
  image_bitmap_rendering_context_canvas_ffi(self.to_js()).unsafe_cast()
}