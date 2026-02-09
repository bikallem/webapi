///|
extern "js" fn text_new_ffi(data : JsValue) -> Text = "(data) => new Text(data)"

///|
extern "js" fn text_split_text_ffi_js(
  obj : JsValue,
  offset : JsValue,
) -> JsValue = "(obj, offset) => obj.splitText(offset)"

///|
fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> Text {
  text_split_text_ffi_js(obj, offset).unsafe_cast()
}

///|
extern "js" fn text_whole_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.wholeText"

///|
fn text_whole_text_ffi(obj : JsValue) -> String {
  text_whole_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_assigned_slot_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.assignedSlot"

///|
fn text_assigned_slot_ffi(obj : JsValue) -> HTMLSlotElement {
  text_assigned_slot_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_get_box_quads_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

///|
fn text_get_box_quads_ffi(obj : JsValue, options : JsValue) -> Array[DOMQuad] {
  text_get_box_quads_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn text_convert_quad_from_node_ffi_js(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
fn text_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  text_convert_quad_from_node_ffi_js(obj, quad, from, options).unsafe_cast()
}

///|
extern "js" fn text_convert_rect_from_node_ffi_js(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
fn text_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  text_convert_rect_from_node_ffi_js(obj, rect, from, options).unsafe_cast()
}

///|
extern "js" fn text_convert_point_from_node_ffi_js(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"

///|
fn text_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint {
  text_convert_point_from_node_ffi_js(obj, point, from, options).unsafe_cast()
}
