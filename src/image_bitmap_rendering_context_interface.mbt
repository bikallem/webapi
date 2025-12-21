///|
#external
pub type ImageBitmapRenderingContext

///|
pub impl TJsValue for ImageBitmapRenderingContext with to_js(
  self : ImageBitmapRenderingContext,
) -> JsValue = "%identity"

///|
pub fn[T : TImageBitmapRenderingContext] ImageBitmapRenderingContext::into(
  self : ImageBitmapRenderingContext,
) -> T = "%identity"

///|
pub impl TImageBitmapRenderingContext for ImageBitmapRenderingContext

///|
pub trait TImageBitmapRenderingContext: TJsValue {
  transfer_from_image_bitmap(self : Self, bitmap : &TImageBitmap) -> Unit = _
}

///|
extern "js" fn image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
  obj : JsValue,
  bitmap : JsValue,
) -> Unit = "(obj, bitmap) => obj.transferFromImageBitmap(obj, bitmap)"

///|
impl TImageBitmapRenderingContext with transfer_from_image_bitmap(
  self : Self,
  bitmap : &TImageBitmap,
) -> Unit {
  image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bitmap),
  )
}
