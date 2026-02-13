///|
fn text_new_ffi(data : JsValue) -> Text = "webapi_Text" "new"

///|
fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> Text = "webapi_Text" "splitText"

///|
fn text_whole_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Text" "get_wholeText"

///|
fn text_whole_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_whole_text_ffi_wasm(obj))
}

///|
fn text_assigned_slot_ffi(obj : JsValue) -> HTMLSlotElement = "webapi_Text" "get_assignedSlot"

///|
fn text_get_box_quads_ffi_wasm(obj : JsValue, options : JsValue) -> JsArray = "webapi_Text" "getBoxQuads"

///|
fn text_get_box_quads_ffi(obj : JsValue, options : JsValue) -> Array[DOMQuad] {
  text_get_box_quads_ffi_wasm(obj, options).to_array()
}

///|
fn text_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "webapi_Text" "convertQuadFromNode"

///|
fn text_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "webapi_Text" "convertRectFromNode"

///|
fn text_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint = "webapi_Text" "convertPointFromNode"
