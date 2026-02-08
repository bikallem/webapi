///|
extern "js" fn text_new_ffi(data : JsValue) -> Text = "(data) => new Text(data)"

///|
extern "js" fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> JsValue = "(obj, offset) => obj.splitText(offset)"

///|
extern "js" fn text_whole_text_ffi(obj : JsValue) -> JsValue = "(obj) => obj.wholeText"

///|
extern "js" fn text_assigned_slot_ffi(obj : JsValue) -> JsValue = "(obj) => obj.assignedSlot"

///|
extern "js" fn text_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

///|
extern "js" fn text_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
extern "js" fn text_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
extern "js" fn text_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"
