///|
fn offscreen_canvas_new_ffi(
  width : JsValue,
  height : JsValue,
) -> OffscreenCanvas = "webapi_OffscreenCanvas" "new"

///|
fn offscreen_canvas_width_ffi(obj : JsValue) -> UInt64 = "webapi_OffscreenCanvas" "get_width"

///|
fn offscreen_canvas_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_OffscreenCanvas" "set_width"

///|
fn offscreen_canvas_height_ffi(obj : JsValue) -> UInt64 = "webapi_OffscreenCanvas" "get_height"

///|
fn offscreen_canvas_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_OffscreenCanvas" "set_height"

///|
fn offscreen_canvas_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "webapi_OffscreenCanvas" "getContext"

///|
fn offscreen_canvas_transfer_to_image_bitmap_ffi(obj : JsValue) -> ImageBitmap = "webapi_OffscreenCanvas" "transferToImageBitmap"

///|
fn offscreen_canvas_convert_to_blob_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_OffscreenCanvas" "convertToBlob"

///|
fn offscreen_canvas_convert_to_blob_ffi(
  obj : JsValue,
  options : JsValue,
) -> @js_async.Promise[Blob] {
  offscreen_canvas_convert_to_blob_ffi_wasm(obj, options).unsafe_cast()
}

///|
fn offscreen_canvas_oncontextlost_ffi(obj : JsValue) -> EventHandler = "webapi_OffscreenCanvas" "get_oncontextlost"

///|
fn offscreen_canvas_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "webapi_OffscreenCanvas" "set_oncontextlost"

///|
fn offscreen_canvas_oncontextrestored_ffi(obj : JsValue) -> EventHandler = "webapi_OffscreenCanvas" "get_oncontextrestored"

///|
fn offscreen_canvas_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "webapi_OffscreenCanvas" "set_oncontextrestored"
