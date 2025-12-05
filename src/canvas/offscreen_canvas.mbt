// Auto-generated MoonBit bindings for OffscreenCanvas

// Do not edit manually

///|
#external
pub type OffscreenCanvas

///|
pub trait TOffscreenCanvas: TJsValue + TEventTarget {
  width(self : Self) -> UInt64 = _
  set_width(self : Self, value : UInt64) -> Unit = _
  height(self : Self) -> UInt64 = _
  set_height(self : Self, value : UInt64) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, value : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, value : EventHandler) -> Unit = _
  get_context(
    self : Self,
    context_id : OffscreenRenderingContextId,
    options? : JsValue,
  ) -> JsValue? = _
  transfer_to_image_bitmap(self : Self) -> ImageBitmap = _
  convert_to_blob(self : Self, options? : ImageEncodeOptions) -> JsPromise[Blob] = _
}

///|
pub impl TEventTarget for OffscreenCanvas

///|
pub impl TOffscreenCanvas for OffscreenCanvas

///|
pub impl TJsValue for OffscreenCanvas with to_js(self : OffscreenCanvas) -> JsValue = "%identity"

///|
pub fn OffscreenCanvas::null() -> OffscreenCanvas {
  JsValue::null()
}

///|
fn offscreen_canvas_new_ffi(
  width : JsValue,
  height : JsValue,
) -> OffscreenCanvas = "webapi_OffscreenCanvas" "new"

///|
pub fn OffscreenCanvas::new(width : UInt64, height : UInt64) -> OffscreenCanvas {
  offscreen_canvas_new_ffi(TJsValue::to_js(width), TJsValue::to_js(height))
}

///|
fn offscreen_canvas_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "webapi_OffscreenCanvas" "getContext"

///|
impl TOffscreenCanvas with get_context(
  self : Self,
  context_id : OffscreenRenderingContextId,
  options? : JsValue,
) -> JsValue? {
  let options_js = opt_to_js(options)
  offscreen_canvas_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    options_js,
  ).as_option()
}

///|
fn offscreen_canvas_transfer_to_image_bitmap_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvas" "transferToImageBitmap"

///|
impl TOffscreenCanvas with transfer_to_image_bitmap(self : Self) -> ImageBitmap {
  offscreen_canvas_transfer_to_image_bitmap_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn offscreen_canvas_convert_to_blob_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_OffscreenCanvas" "convertToBlob"

///|
impl TOffscreenCanvas with convert_to_blob(
  self : Self,
  options? : ImageEncodeOptions = ImageEncodeOptions::empty(),
) -> JsPromise[Blob] {
  offscreen_canvas_convert_to_blob_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_width_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvas" "width"

///|
impl TOffscreenCanvas with width(self : Self) -> UInt64 {
  offscreen_canvas_width_ffi(self.to_js()).unsafe_cast()
}

///|
fn offscreen_canvas_set_width_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_OffscreenCanvas" "set_width"

///|
impl TOffscreenCanvas with set_width(self : Self, value : UInt64) -> Unit {
  offscreen_canvas_set_width_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn offscreen_canvas_height_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvas" "height"

///|
impl TOffscreenCanvas with height(self : Self) -> UInt64 {
  offscreen_canvas_height_ffi(self.to_js()).unsafe_cast()
}

///|
fn offscreen_canvas_set_height_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_OffscreenCanvas" "set_height"

///|
impl TOffscreenCanvas with set_height(self : Self, value : UInt64) -> Unit {
  offscreen_canvas_set_height_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn offscreen_canvas_oncontextlost_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvas" "oncontextlost"

///|
impl TOffscreenCanvas with oncontextlost(self : Self) -> EventHandler {
  offscreen_canvas_oncontextlost_ffi(self.to_js()).unsafe_cast()
}

///|
fn offscreen_canvas_set_oncontextlost_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvas" "set_oncontextlost"

///|
impl TOffscreenCanvas with set_oncontextlost(self : Self, value : EventHandler) -> Unit {
  offscreen_canvas_set_oncontextlost_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn offscreen_canvas_oncontextrestored_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvas" "oncontextrestored"

///|
impl TOffscreenCanvas with oncontextrestored(self : Self) -> EventHandler {
  offscreen_canvas_oncontextrestored_ffi(self.to_js()).unsafe_cast()
}

///|
fn offscreen_canvas_set_oncontextrestored_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvas" "set_oncontextrestored"

///|
impl TOffscreenCanvas with set_oncontextrestored(
  self : Self,
  value : EventHandler,
) -> Unit {
  offscreen_canvas_set_oncontextrestored_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}
