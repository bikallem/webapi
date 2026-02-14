// Do not edit. This file is generated.
// MoonBit type: OffscreenCanvas
// Specifications: html.idl

///|
/// [OffscreenCanvas](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas)
#external
pub type OffscreenCanvas

///|
pub impl TJsValue for OffscreenCanvas with to_js(self : OffscreenCanvas) -> JsValue = "%identity"

///|
pub impl FromJsAny for OffscreenCanvas with from_js_any(value : JsAny) -> OffscreenCanvas = "%identity"

///|
pub fn[T : TOffscreenCanvas] OffscreenCanvas::into(self : OffscreenCanvas) -> T = "%identity"

///|
pub impl TOffscreenCanvas for OffscreenCanvas

///|
pub impl TEventTarget for OffscreenCanvas

///|
pub fn OffscreenCanvas::new(width : UInt64, height : UInt64) -> OffscreenCanvas {
  offscreen_canvas_new_ffi(TJsValue::to_js(width), TJsValue::to_js(height))
}

///|
/// [OffscreenCanvas](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas) interface.
pub trait TOffscreenCanvas: TEventTarget {
  width(self : Self) -> UInt64 = _
  set_width(self : Self, width : UInt64) -> Unit = _
  height(self : Self) -> UInt64 = _
  set_height(self : Self, height : UInt64) -> Unit = _
  get_context(
    self : Self,
    context_id : OffscreenRenderingContextId,
    options? : JsValue,
  ) -> OffscreenRenderingContext? = _
  transfer_to_image_bitmap(self : Self) -> ImageBitmap = _
  convert_to_blob(self : Self, options? : ImageEncodeOptions) -> JsPromise[Blob] = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : EventHandler) -> Unit = _
}

///|
/// [OffscreenCanvas.width](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/width)
impl TOffscreenCanvas with width(self : Self) -> UInt64 {
  offscreen_canvas_width_ffi(TJsValue::to_js(self))
}

///|
/// [OffscreenCanvas.width](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/width)
impl TOffscreenCanvas with set_width(self : Self, width : UInt64) -> Unit {
  offscreen_canvas_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

///|
/// [OffscreenCanvas.height](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/height)
impl TOffscreenCanvas with height(self : Self) -> UInt64 {
  offscreen_canvas_height_ffi(TJsValue::to_js(self))
}

///|
/// [OffscreenCanvas.height](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/height)
impl TOffscreenCanvas with set_height(self : Self, height : UInt64) -> Unit {
  offscreen_canvas_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
/// [OffscreenCanvas.getContext](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/getContext)
impl TOffscreenCanvas with get_context(
  self : Self,
  context_id : OffscreenRenderingContextId,
  options? : JsValue,
) -> OffscreenRenderingContext? {
  let result = offscreen_canvas_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    opt_to_js(options),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [OffscreenCanvas.transferToImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/transferToImageBitmap)
impl TOffscreenCanvas with transfer_to_image_bitmap(self : Self) -> ImageBitmap {
  offscreen_canvas_transfer_to_image_bitmap_ffi(TJsValue::to_js(self))
}

///|
/// [OffscreenCanvas.convertToBlob](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/convertToBlob)
impl TOffscreenCanvas with convert_to_blob(
  self : Self,
  options? : ImageEncodeOptions,
) -> JsPromise[Blob] {
  offscreen_canvas_convert_to_blob_ffi(
    TJsValue::to_js(self),
    opt_to_js(options),
  )
}

///|
/// [OffscreenCanvas.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextlost)
impl TOffscreenCanvas with oncontextlost(self : Self) -> EventHandler {
  offscreen_canvas_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
/// [OffscreenCanvas.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextlost)
impl TOffscreenCanvas with set_oncontextlost(
  self : Self,
  oncontextlost : EventHandler,
) -> Unit {
  offscreen_canvas_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextlost),
  )
}

///|
/// [OffscreenCanvas.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextrestored)
impl TOffscreenCanvas with oncontextrestored(self : Self) -> EventHandler {
  offscreen_canvas_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
/// [OffscreenCanvas.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextrestored)
impl TOffscreenCanvas with set_oncontextrestored(
  self : Self,
  oncontextrestored : EventHandler,
) -> Unit {
  offscreen_canvas_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextrestored),
  )
}
