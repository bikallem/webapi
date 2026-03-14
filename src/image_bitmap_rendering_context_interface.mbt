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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TImageBitmapRenderingContext] ImageBitmapRenderingContext::into(
  self : ImageBitmapRenderingContext,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TImageBitmapRenderingContext] ImageBitmapRenderingContext::unsafe_into(
  self : ImageBitmapRenderingContext,
) -> T = "%identity"

///|
pub impl HasConstructor for ImageBitmapRenderingContext with constructor_name() {
  "ImageBitmapRenderingContext"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TImageBitmapRenderingContext + HasConstructor] ImageBitmapRenderingContext::try_into(
  self : ImageBitmapRenderingContext,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TImageBitmapRenderingContext for ImageBitmapRenderingContext

///|
pub(open) trait TImageBitmapRenderingContextCanvas: TJsValue {}

///|
pub impl TImageBitmapRenderingContextCanvas for HTMLCanvasElement

///|
pub impl TImageBitmapRenderingContextCanvas for OffscreenCanvas

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
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TImageBitmapRenderingContextCanvas + FromJsAny] ImageBitmapRenderingContextCanvas::into(
  self : ImageBitmapRenderingContextCanvas,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TImageBitmapRenderingContextCanvas + FromJsAny] ImageBitmapRenderingContextCanvas::unsafe_into(
  self : ImageBitmapRenderingContextCanvas,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TImageBitmapRenderingContextCanvas] ImageBitmapRenderingContextCanvas::from(
  value : T,
) -> ImageBitmapRenderingContextCanvas = "%identity"

///|
pub impl TImageBitmapRenderingContextCanvas for ImageBitmapRenderingContextCanvas

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

///|
#cfg(target="js")
extern "js" fn image_bitmap_rendering_context_canvas_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.canvas"

///|
#cfg(target="js")
fn image_bitmap_rendering_context_canvas_ffi(
  obj : JsValue,
) -> ImageBitmapRenderingContextCanvas {
  image_bitmap_rendering_context_canvas_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
  obj : JsValue,
  bitmap : JsValue,
) -> Unit = "(obj, bitmap) => obj.transferFromImageBitmap(bitmap)"

///|
#cfg(target="wasm-gc")
fn image_bitmap_rendering_context_canvas_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ImageBitmapRenderingContext" "get_canvas"

///|
#cfg(target="wasm-gc")
fn image_bitmap_rendering_context_canvas_ffi(
  obj : JsValue,
) -> ImageBitmapRenderingContextCanvas {
  image_bitmap_rendering_context_canvas_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn image_bitmap_rendering_context_transfer_from_image_bitmap_ffi(
  obj : JsValue,
  bitmap : JsValue,
) -> Unit = "webapi_ImageBitmapRenderingContext" "transferFromImageBitmap"
