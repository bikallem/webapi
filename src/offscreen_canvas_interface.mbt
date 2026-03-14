// Do not edit. This file is generated.
// MoonBit type: OffscreenCanvas
// Specifications: html.idl

/// [OffscreenCanvas](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas)
#external
pub type OffscreenCanvas

pub impl TJsValue for OffscreenCanvas with to_js(self: OffscreenCanvas) -> JsValue = "%identity"

pub impl FromJsAny for OffscreenCanvas with from_js_any(value : JsAny) -> OffscreenCanvas = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TOffscreenCanvas] OffscreenCanvas::into(self : OffscreenCanvas) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TOffscreenCanvas] OffscreenCanvas::unsafe_into(self : OffscreenCanvas) -> T = "%identity"

pub impl HasConstructor for OffscreenCanvas with constructor_name() { "OffscreenCanvas" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TOffscreenCanvas + HasConstructor] OffscreenCanvas::try_into(self : OffscreenCanvas) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TOffscreenCanvas for OffscreenCanvas

pub impl TEventTarget for OffscreenCanvas

pub fn OffscreenCanvas::new(width : UInt64, 
height : UInt64) -> OffscreenCanvas {
  offscreen_canvas_new_ffi(TJsValue::to_js(width), TJsValue::to_js(height))
}

/// [OffscreenCanvas](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas) interface.
pub trait TOffscreenCanvas: TEventTarget {
  width(self : Self) -> UInt64 = _
  set_width(self : Self, width : UInt64) -> Unit = _
  height(self : Self) -> UInt64 = _
  set_height(self : Self, height : UInt64) -> Unit = _
  get_context(self : Self, context_id : OffscreenRenderingContextId, options? : JsValue) -> OffscreenRenderingContext? = _
  transfer_to_image_bitmap(self : Self) -> ImageBitmap = _
  convert_to_blob(self : Self, options? : ImageEncodeOptions) -> JsPromise[Blob] = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : (Event) -> JsValue) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : (Event) -> JsValue) -> Unit = _
}

/// [OffscreenCanvas.width](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/width)
impl TOffscreenCanvas with width(self : Self) -> UInt64 {
  offscreen_canvas_width_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvas.width](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/width)
impl TOffscreenCanvas with set_width(self : Self, 
width : UInt64) -> Unit {
  offscreen_canvas_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [OffscreenCanvas.height](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/height)
impl TOffscreenCanvas with height(self : Self) -> UInt64 {
  offscreen_canvas_height_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvas.height](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/height)
impl TOffscreenCanvas with set_height(self : Self, 
height : UInt64) -> Unit {
  offscreen_canvas_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [OffscreenCanvas.getContext](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/getContext)
impl TOffscreenCanvas with get_context(self : Self, 
context_id : OffscreenRenderingContextId, 
options? : JsValue) -> OffscreenRenderingContext? {
  offscreen_canvas_get_context_ffi(TJsValue::to_js(self), TJsValue::to_js(context_id), opt_to_js(options)).to_option()
}

/// [OffscreenCanvas.transferToImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/transferToImageBitmap)
impl TOffscreenCanvas with transfer_to_image_bitmap(self : Self) -> ImageBitmap {
  offscreen_canvas_transfer_to_image_bitmap_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvas.convertToBlob](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/convertToBlob)
impl TOffscreenCanvas with convert_to_blob(self : Self, 
options? : ImageEncodeOptions) -> JsPromise[Blob] {
  offscreen_canvas_convert_to_blob_ffi(TJsValue::to_js(self), opt_to_js(options))
}

/// [OffscreenCanvas.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextlost)
impl TOffscreenCanvas with oncontextlost(self : Self) -> EventHandler {
  offscreen_canvas_oncontextlost_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvas.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextlost)
impl TOffscreenCanvas with set_oncontextlost(self : Self, 
oncontextlost : (Event) -> JsValue) -> Unit {
  offscreen_canvas_set_oncontextlost_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(oncontextlost)))
}

/// [OffscreenCanvas.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextrestored)
impl TOffscreenCanvas with oncontextrestored(self : Self) -> EventHandler {
  offscreen_canvas_oncontextrestored_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvas.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas/oncontextrestored)
impl TOffscreenCanvas with set_oncontextrestored(self : Self, 
oncontextrestored : (Event) -> JsValue) -> Unit {
  offscreen_canvas_set_oncontextrestored_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(oncontextrestored)))
}

#cfg(target="js")
extern "js" fn offscreen_canvas_new_ffi(width: JsValue, height: JsValue) -> OffscreenCanvas = "(width, height) => new OffscreenCanvas(width, height)"

#cfg(target="js")
extern "js" fn offscreen_canvas_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn offscreen_canvas_width_ffi(obj: JsValue) -> UInt64 {
  offscreen_canvas_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn offscreen_canvas_height_ffi(obj: JsValue) -> UInt64 {
  offscreen_canvas_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_get_context_ffi(obj: JsValue, context_id: JsValue, options: JsValue) -> JsValue = "(obj, context_id, options) => obj.getContext(context_id, options)"

#cfg(target="js")
extern "js" fn offscreen_canvas_transfer_to_image_bitmap_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.transferToImageBitmap()"

///|
#cfg(target="js")
fn offscreen_canvas_transfer_to_image_bitmap_ffi(obj: JsValue) -> ImageBitmap {
  offscreen_canvas_transfer_to_image_bitmap_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_convert_to_blob_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.convertToBlob(options)"

///|
#cfg(target="js")
fn offscreen_canvas_convert_to_blob_ffi(obj: JsValue, options: JsValue) -> JsPromise[Blob] {
  offscreen_canvas_convert_to_blob_ffi_js(obj, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_oncontextlost_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
#cfg(target="js")
fn offscreen_canvas_oncontextlost_ffi(obj: JsValue) -> EventHandler {
  offscreen_canvas_oncontextlost_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_set_oncontextlost_ffi(obj: JsValue, oncontextlost: JsValue) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_oncontextrestored_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
#cfg(target="js")
fn offscreen_canvas_oncontextrestored_ffi(obj: JsValue) -> EventHandler {
  offscreen_canvas_oncontextrestored_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_set_oncontextrestored_ffi(obj: JsValue, oncontextrestored: JsValue) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

#cfg(target="wasm-gc")
fn offscreen_canvas_new_ffi(width: JsValue, height: JsValue) -> OffscreenCanvas = "webapi_OffscreenCanvas" "new"

#cfg(target="wasm-gc")
fn offscreen_canvas_width_ffi(obj: JsValue) -> UInt64 = "webapi_OffscreenCanvas" "get_width"

#cfg(target="wasm-gc")
fn offscreen_canvas_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_OffscreenCanvas" "set_width"

#cfg(target="wasm-gc")
fn offscreen_canvas_height_ffi(obj: JsValue) -> UInt64 = "webapi_OffscreenCanvas" "get_height"

#cfg(target="wasm-gc")
fn offscreen_canvas_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_OffscreenCanvas" "set_height"

#cfg(target="wasm-gc")
fn offscreen_canvas_get_context_ffi(obj: JsValue, context_id: JsValue, options: JsValue) -> JsValue = "webapi_OffscreenCanvas" "getContext"

#cfg(target="wasm-gc")
fn offscreen_canvas_transfer_to_image_bitmap_ffi(obj: JsValue) -> ImageBitmap = "webapi_OffscreenCanvas" "transferToImageBitmap"

#cfg(target="wasm-gc")
fn offscreen_canvas_convert_to_blob_ffi_wasm(obj: JsValue, options: JsValue) -> JsValue = "webapi_OffscreenCanvas" "convertToBlob"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_convert_to_blob_ffi(obj: JsValue, options: JsValue) -> JsPromise[Blob] {
  offscreen_canvas_convert_to_blob_ffi_wasm(obj, options).unsafe_cast()
}

#cfg(target="wasm-gc")
fn offscreen_canvas_oncontextlost_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvas" "get_oncontextlost"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_oncontextlost_ffi(obj: JsValue) -> EventHandler {
  offscreen_canvas_oncontextlost_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn offscreen_canvas_set_oncontextlost_ffi(obj: JsValue, oncontextlost: JsValue) -> Unit = "webapi_OffscreenCanvas" "set_oncontextlost"

#cfg(target="wasm-gc")
fn offscreen_canvas_oncontextrestored_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvas" "get_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_oncontextrestored_ffi(obj: JsValue) -> EventHandler {
  offscreen_canvas_oncontextrestored_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn offscreen_canvas_set_oncontextrestored_ffi(obj: JsValue, oncontextrestored: JsValue) -> Unit = "webapi_OffscreenCanvas" "set_oncontextrestored"