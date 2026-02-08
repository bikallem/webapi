fn text_new_ffi(data: JsValue) -> Text = "webapi_Text" "new"

fn text_split_text_ffi(obj: JsValue, offset: JsValue) -> JsValue = "webapi_Text" "splitText"

fn text_whole_text_ffi(obj: JsValue) -> JsValue = "webapi_Text" "get_wholeText"

fn text_assigned_slot_ffi(obj: JsValue) -> JsValue = "webapi_Text" "get_assignedSlot"

fn text_get_box_quads_ffi(obj: JsValue, options: JsValue) -> JsValue = "webapi_Text" "getBoxQuads"

fn text_convert_quad_from_node_ffi(obj: JsValue, quad: JsValue, from: JsValue, options: JsValue) -> JsValue = "webapi_Text" "convertQuadFromNode"

fn text_convert_rect_from_node_ffi(obj: JsValue, rect: JsValue, from: JsValue, options: JsValue) -> JsValue = "webapi_Text" "convertRectFromNode"

fn text_convert_point_from_node_ffi(obj: JsValue, point: JsValue, from: JsValue, options: JsValue) -> JsValue = "webapi_Text" "convertPointFromNode"