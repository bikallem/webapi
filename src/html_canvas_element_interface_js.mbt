///|
extern "js" fn html_canvas_element_new_ffi() -> HTMLCanvasElement = "() => new HTMLCanvasElement()"

///|
extern "js" fn html_canvas_element_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn html_canvas_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
extern "js" fn html_canvas_element_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn html_canvas_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
extern "js" fn html_canvas_element_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "(obj, context_id, options) => obj.getContext(context_id, options)"

///|
extern "js" fn html_canvas_element_to_data_url_ffi(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> JsValue = "(obj, type_, quality) => obj.toDataURL(type_, quality)"

///|
extern "js" fn html_canvas_element_to_blob_ffi(
  obj : JsValue,
  _callback : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> Unit = "(obj, _callback, type_, quality) => obj.toBlob(_callback, type_, quality)"

///|
extern "js" fn html_canvas_element_transfer_control_to_offscreen_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.transferControlToOffscreen()"
