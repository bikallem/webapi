///|
extern "js" fn offscreen_canvas_new_ffi(
  width : JsValue,
  height : JsValue,
) -> OffscreenCanvas = "(width, height) => new OffscreenCanvas(width, height)"

///|
extern "js" fn offscreen_canvas_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn offscreen_canvas_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
extern "js" fn offscreen_canvas_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn offscreen_canvas_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
extern "js" fn offscreen_canvas_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "(obj, context_id, options) => obj.getContext(context_id, options)"

///|
extern "js" fn offscreen_canvas_transfer_to_image_bitmap_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.transferToImageBitmap()"

///|
extern "js" fn offscreen_canvas_convert_to_blob_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.convertToBlob(options)"

///|
extern "js" fn offscreen_canvas_oncontextlost_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
extern "js" fn offscreen_canvas_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
extern "js" fn offscreen_canvas_oncontextrestored_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
extern "js" fn offscreen_canvas_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"
