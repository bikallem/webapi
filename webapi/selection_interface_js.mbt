extern "js" fn selection_anchor_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.anchorNode"

///|
fn selection_anchor_node_ffi(obj: JsValue) -> Node {
  selection_anchor_node_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_anchor_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.anchorOffset"

///|
fn selection_anchor_offset_ffi(obj: JsValue) -> UInt {
  selection_anchor_offset_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_focus_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.focusNode"

///|
fn selection_focus_node_ffi(obj: JsValue) -> Node {
  selection_focus_node_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_focus_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.focusOffset"

///|
fn selection_focus_offset_ffi(obj: JsValue) -> UInt {
  selection_focus_offset_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_is_collapsed_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isCollapsed"

///|
fn selection_is_collapsed_ffi(obj: JsValue) -> Bool {
  selection_is_collapsed_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_range_count_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rangeCount"

///|
fn selection_range_count_ffi(obj: JsValue) -> UInt {
  selection_range_count_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn selection_type_ffi(obj: JsValue) -> String {
  selection_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.direction"

///|
fn selection_direction_ffi(obj: JsValue) -> String {
  selection_direction_ffi_js(obj).unsafe_cast()
}

extern "js" fn selection_get_range_at_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.getRangeAt(index)"

///|
fn selection_get_range_at_ffi(obj: JsValue, index: JsValue) -> Range {
  selection_get_range_at_ffi_js(obj, index).unsafe_cast()
}

extern "js" fn selection_add_range_ffi(obj: JsValue, range: JsValue) -> Unit = "(obj, range) => obj.addRange(range)"

extern "js" fn selection_remove_range_ffi(obj: JsValue, range: JsValue) -> Unit = "(obj, range) => obj.removeRange(range)"

extern "js" fn selection_remove_all_ranges_ffi(obj: JsValue) -> Unit = "(obj) => obj.removeAllRanges()"

extern "js" fn selection_empty_ffi(obj: JsValue) -> Unit = "(obj) => obj.empty()"

extern "js" fn selection_get_composed_ranges_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getComposedRanges(options)"

///|
fn selection_get_composed_ranges_ffi(obj: JsValue, options: JsValue) -> Array[StaticRange] {
  selection_get_composed_ranges_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn selection_collapse_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.collapse(node, offset)"

extern "js" fn selection_set_position_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.setPosition(node, offset)"

extern "js" fn selection_collapse_to_start_ffi(obj: JsValue) -> Unit = "(obj) => obj.collapseToStart()"

extern "js" fn selection_collapse_to_end_ffi(obj: JsValue) -> Unit = "(obj) => obj.collapseToEnd()"

extern "js" fn selection_extend_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.extend(node, offset)"

extern "js" fn selection_set_base_and_extent_ffi(obj: JsValue, anchor_node: JsValue, anchor_offset: JsValue, focus_node: JsValue, focus_offset: JsValue) -> Unit = "(obj, anchor_node, anchor_offset, focus_node, focus_offset) => obj.setBaseAndExtent(anchor_node, anchor_offset, focus_node, focus_offset)"

extern "js" fn selection_select_all_children_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.selectAllChildren(node)"

extern "js" fn selection_modify_ffi(obj: JsValue, alter: JsValue, direction: JsValue, granularity: JsValue) -> Unit = "(obj, alter, direction, granularity) => obj.modify(alter, direction, granularity)"

extern "js" fn selection_delete_from_document_ffi(obj: JsValue) -> Unit = "(obj) => obj.deleteFromDocument()"

extern "js" fn selection_contains_node_ffi_js(obj: JsValue, node: JsValue, allow_partial_containment: JsValue) -> JsValue = "(obj, node, allow_partial_containment) => obj.containsNode(node, allow_partial_containment)"

///|
fn selection_contains_node_ffi(obj: JsValue, node: JsValue, allow_partial_containment: JsValue) -> Bool {
  selection_contains_node_ffi_js(obj, node, allow_partial_containment).unsafe_cast()
}