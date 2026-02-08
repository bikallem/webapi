extern "js" fn range_new_ffi() -> Range = "() => new Range()"

extern "js" fn range_common_ancestor_container_ffi(obj: JsValue) -> JsValue = "(obj) => obj.commonAncestorContainer"

extern "js" fn range_set_start_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.setStart(node, offset)"

extern "js" fn range_set_end_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.setEnd(node, offset)"

extern "js" fn range_set_start_before_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.setStartBefore(node)"

extern "js" fn range_set_start_after_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.setStartAfter(node)"

extern "js" fn range_set_end_before_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.setEndBefore(node)"

extern "js" fn range_set_end_after_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.setEndAfter(node)"

extern "js" fn range_collapse_ffi(obj: JsValue, to_start: JsValue) -> Unit = "(obj, to_start) => obj.collapse(to_start)"

extern "js" fn range_select_node_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.selectNode(node)"

extern "js" fn range_select_node_contents_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.selectNodeContents(node)"

extern "js" fn range_compare_boundary_points_ffi(obj: JsValue, how: JsValue, source_range: JsValue) -> JsValue = "(obj, how, source_range) => obj.compareBoundaryPoints(how, source_range)"

extern "js" fn range_delete_contents_ffi(obj: JsValue) -> Unit = "(obj) => obj.deleteContents()"

extern "js" fn range_extract_contents_ffi(obj: JsValue) -> JsValue = "(obj) => obj.extractContents()"

extern "js" fn range_clone_contents_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cloneContents()"

extern "js" fn range_insert_node_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.insertNode(node)"

extern "js" fn range_surround_contents_ffi(obj: JsValue, new_parent: JsValue) -> Unit = "(obj, new_parent) => obj.surroundContents(new_parent)"

extern "js" fn range_clone_range_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cloneRange()"

extern "js" fn range_detach_ffi(obj: JsValue) -> Unit = "(obj) => obj.detach()"

extern "js" fn range_is_point_in_range_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> JsValue = "(obj, node, offset) => obj.isPointInRange(node, offset)"

extern "js" fn range_compare_point_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> JsValue = "(obj, node, offset) => obj.comparePoint(node, offset)"

extern "js" fn range_intersects_node_ffi(obj: JsValue, node: JsValue) -> JsValue = "(obj, node) => obj.intersectsNode(node)"

extern "js" fn range_create_contextual_fragment_ffi(obj: JsValue, string: JsValue) -> JsValue = "(obj, string) => obj.createContextualFragment(string)"

extern "js" fn range_get_client_rects_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getClientRects()"

extern "js" fn range_get_bounding_client_rect_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getBoundingClientRect()"