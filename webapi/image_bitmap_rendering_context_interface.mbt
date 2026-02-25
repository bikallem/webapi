// Do not edit. This file is generated.
// MoonBit type: ImageBitmapRenderingContext
// Specifications: html.idl

///|
/// [ImageBitmapRenderingContext](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapRenderingContext)
#external
pub type ImageBitmapRenderingContext

///|
pub impl TJsValue for ImageBitmapRenderingContext with to_js(
  self : ImageBitmapRenderingContext,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageBitmapRenderingContext with from_js_any(
  value : JsAny,
) -> ImageBitmapRenderingContext = "%identity"

///|
pub fn[T : TImageBitmapRenderingContext] ImageBitmapRenderingContext::into(
  self : ImageBitmapRenderingContext,
) -> T = "%identity"

///|
pub impl TImageBitmapRenderingContext for ImageBitmapRenderingContext

///|
#external
pub type ImageBitmapRenderingContextCanvas

///|
pub impl TJsValue for ImageBitmapRenderingContextCanvas with to_js(
  self : ImageBitmapRenderingContextCanvas,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageBitmapRenderingContextCanvas with from_js_any(
  value : JsAny,
) -> ImageBitmapRenderingContextCanvas = "%identity"

///|
pub fn[T : TImageBitmapRenderingContextCanvas + FromJsAny] ImageBitmapRenderingContextCanvas::into(
  self : ImageBitmapRenderingContextCanvas,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TImageBitmapRenderingContextCanvas] ImageBitmapRenderingContextCanvas::from(
  value : T,
) -> ImageBitmapRenderingContextCanvas = "%identity"

///|
pub impl TImageBitmapRenderingContextCanvas for ImageBitmapRenderingContextCanvas with to_js(
  self : ImageBitmapRenderingContextCanvas,
) -> JsValue = "%identity"

///|
pub(open) trait TImageBitmapRenderingContextCanvas {
  to_js(self : Self) -> JsValue
}

///|
pub impl TImageBitmapRenderingContextCanvas for HTMLCanvasElement with to_js(
  self : HTMLCanvasElement,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapRenderingContextCanvas for OffscreenCanvas with to_js(
  self : OffscreenCanvas,
) -> JsValue = "%identity"

///|
/// [ImageBitmapRenderingContext](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapRenderingContext) interface.
pub trait TImageBitmapRenderingContext: TJsValue {
  canvas(self : Self) -> ImageBitmapRenderingContextCanvas = _
  transfer_from_image_bitmap(self : Self, bitmap : &TImageBitmap) -> Unit = _
}

///|
/// [ImageBitmapRenderingContext.canvas](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapRenderingContext/canvas)
impl TImageBitmapRenderingContext with canvas(self : Self) -> ImageBitmapRenderingContextCanvas {
  image_bitmap_rendering_context_canvas_ffi(TJsValue::to_js(self))
}

///|
/// [ImageBitmapRenderingContext.transferFromImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapRenderingContext/transferFromImageBitmap)
impl TImageBitmapRenderingContext with transfer_from_image_bitmap(
  self : Self,
  bitmap : &TImageBitmap,
) -> Unit {
  image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bitmap),
  )
}
