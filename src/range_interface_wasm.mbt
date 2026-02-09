///|
fn range_new_ffi() -> Range = "webapi_Range" "new"

///|
fn range_common_ancestor_container_ffi(obj : JsValue) -> Node = "webapi_Range" "get_commonAncestorContainer"

///|
fn range_set_start_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setStart"

///|
fn range_set_end_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setEnd"

///|
fn range_set_start_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartBefore"

///|
fn range_set_start_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartAfter"

///|
fn range_set_end_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndBefore"

///|
fn range_set_end_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndAfter"

///|
fn range_collapse_ffi(obj : JsValue, to_start : JsValue) -> Unit = "webapi_Range" "collapse"

///|
fn range_select_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNode"

///|
fn range_select_node_contents_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNodeContents"

///|
fn range_compare_boundary_points_ffi(
  obj : JsValue,
  how : JsValue,
  source_range : JsValue,
) -> Int = "webapi_Range" "compareBoundaryPoints"

///|
fn range_delete_contents_ffi(obj : JsValue) -> Unit = "webapi_Range" "deleteContents"

///|
fn range_extract_contents_ffi(obj : JsValue) -> DocumentFragment = "webapi_Range" "extractContents"

///|
fn range_clone_contents_ffi(obj : JsValue) -> DocumentFragment = "webapi_Range" "cloneContents"

///|
fn range_insert_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "insertNode"

///|
fn range_surround_contents_ffi(obj : JsValue, new_parent : JsValue) -> Unit = "webapi_Range" "surroundContents"

///|
fn range_clone_range_ffi(obj : JsValue) -> Range = "webapi_Range" "cloneRange"

///|
fn range_detach_ffi(obj : JsValue) -> Unit = "webapi_Range" "detach"

///|
fn range_is_point_in_range_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Bool = "webapi_Range" "isPointInRange"

///|
fn range_compare_point_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Int = "webapi_Range" "comparePoint"

///|
fn range_intersects_node_ffi(obj : JsValue, node : JsValue) -> Bool = "webapi_Range" "intersectsNode"

///|
fn range_create_contextual_fragment_ffi(
  obj : JsValue,
  string : JsValue,
) -> DocumentFragment = "webapi_Range" "createContextualFragment"

///|
fn range_get_client_rects_ffi(obj : JsValue) -> DOMRectList = "webapi_Range" "getClientRects"

///|
fn range_get_bounding_client_rect_ffi(obj : JsValue) -> DOMRect = "webapi_Range" "getBoundingClientRect"
