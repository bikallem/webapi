///|
fn html_canvas_element_new_ffi() -> HTMLCanvasElement = "webapi_HTMLCanvasElement" "new"

///|
fn html_canvas_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLCanvasElement" "get_width"

///|
fn html_canvas_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLCanvasElement" "set_width"

///|
fn html_canvas_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLCanvasElement" "get_height"

///|
fn html_canvas_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLCanvasElement" "set_height"

///|
fn html_canvas_element_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "webapi_HTMLCanvasElement" "getContext"

///|
fn html_canvas_element_to_data_url_ffi_wasm(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> JsValue = "webapi_HTMLCanvasElement" "toDataURL"

///|
fn html_canvas_element_to_data_url_ffi(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> String {
  jsvalue_to_string(
    html_canvas_element_to_data_url_ffi_wasm(obj, type_, quality),
  )
}

///|
fn html_canvas_element_to_blob_ffi(
  obj : JsValue,
  _callback : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> Unit = "webapi_HTMLCanvasElement" "toBlob"

///|
fn html_canvas_element_transfer_control_to_offscreen_ffi(
  obj : JsValue,
) -> OffscreenCanvas = "webapi_HTMLCanvasElement" "transferControlToOffscreen"
