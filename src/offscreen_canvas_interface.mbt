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
extern "js" fn offscreen_canvas_width_ffi(obj : JsValue) -> UInt64 = "(obj) => obj.width"

///|
/// [OffscreenCanvas.width](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/width)
impl TOffscreenCanvas with width(self : Self) -> UInt64 {
  offscreen_canvas_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn offscreen_canvas_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
/// [OffscreenCanvas.width](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/width)
impl TOffscreenCanvas with set_width(self : Self, width : UInt64) -> Unit {
  offscreen_canvas_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

///|
extern "js" fn offscreen_canvas_height_ffi(obj : JsValue) -> UInt64 = "(obj) => obj.height"

///|
/// [OffscreenCanvas.height](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/height)
impl TOffscreenCanvas with height(self : Self) -> UInt64 {
  offscreen_canvas_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn offscreen_canvas_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
/// [OffscreenCanvas.height](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/height)
impl TOffscreenCanvas with set_height(self : Self, height : UInt64) -> Unit {
  offscreen_canvas_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn offscreen_canvas_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "(obj, context_id, options) => obj.getContext(context_id, options)"

///|
/// [OffscreenCanvas.getContext](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/getContext)
impl TOffscreenCanvas with get_context(
  self : Self,
  context_id : OffscreenRenderingContextId,
  options? : JsValue = JsValue::null(),
) -> OffscreenRenderingContext? {
  let result = offscreen_canvas_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    TJsValue::to_js(options),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn offscreen_canvas_transfer_to_image_bitmap_ffi(
  obj : JsValue,
) -> ImageBitmap = "(obj) => obj.transferToImageBitmap()"

///|
/// [OffscreenCanvas.transferToImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/transferToImageBitmap)
impl TOffscreenCanvas with transfer_to_image_bitmap(self : Self) -> ImageBitmap {
  offscreen_canvas_transfer_to_image_bitmap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn offscreen_canvas_convert_to_blob_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Blob] = "(obj, options) => obj.convertToBlob(options)"

///|
/// [OffscreenCanvas.convertToBlob](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/convertToBlob)
impl TOffscreenCanvas with convert_to_blob(
  self : Self,
  options? : ImageEncodeOptions = ImageEncodeOptions::empty(),
) -> JsPromise[Blob] {
  offscreen_canvas_convert_to_blob_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn offscreen_canvas_oncontextlost_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.oncontextlost"

///|
/// [OffscreenCanvas.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextlost)
impl TOffscreenCanvas with oncontextlost(self : Self) -> EventHandler {
  offscreen_canvas_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn offscreen_canvas_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

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
extern "js" fn offscreen_canvas_oncontextrestored_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.oncontextrestored"

///|
/// [OffscreenCanvas.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextrestored)
impl TOffscreenCanvas with oncontextrestored(self : Self) -> EventHandler {
  offscreen_canvas_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn offscreen_canvas_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

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
