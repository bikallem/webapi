///|
fn selection_anchor_node_ffi(obj : JsValue) -> Node = "webapi_Selection" "get_anchorNode"

///|
fn selection_anchor_offset_ffi(obj : JsValue) -> UInt = "webapi_Selection" "get_anchorOffset"

///|
fn selection_focus_node_ffi(obj : JsValue) -> Node = "webapi_Selection" "get_focusNode"

///|
fn selection_focus_offset_ffi(obj : JsValue) -> UInt = "webapi_Selection" "get_focusOffset"

///|
fn selection_is_collapsed_ffi(obj : JsValue) -> Bool = "webapi_Selection" "get_isCollapsed"

///|
fn selection_range_count_ffi(obj : JsValue) -> UInt = "webapi_Selection" "get_rangeCount"

///|
fn selection_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Selection" "get_type"

///|
fn selection_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(selection_type_ffi_wasm(obj))
}

///|
fn selection_direction_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Selection" "get_direction"

///|
fn selection_direction_ffi(obj : JsValue) -> String {
  jsvalue_to_string(selection_direction_ffi_wasm(obj))
}

///|
fn selection_get_range_at_ffi(obj : JsValue, index : JsValue) -> Range = "webapi_Selection" "getRangeAt"

///|
fn selection_add_range_ffi(obj : JsValue, range : JsValue) -> Unit = "webapi_Selection" "addRange"

///|
fn selection_remove_range_ffi(obj : JsValue, range : JsValue) -> Unit = "webapi_Selection" "removeRange"

///|
fn selection_remove_all_ranges_ffi(obj : JsValue) -> Unit = "webapi_Selection" "removeAllRanges"

///|
fn selection_empty_ffi(obj : JsValue) -> Unit = "webapi_Selection" "empty"

///|
fn selection_get_composed_ranges_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Selection" "getComposedRanges"

///|
fn selection_get_composed_ranges_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[StaticRange] {
  jsvalue_to_array(
    selection_get_composed_ranges_ffi_wasm(obj, options),
    JsValue::unsafe_cast,
  )
}

///|
fn selection_collapse_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Unit = "webapi_Selection" "collapse"

///|
fn selection_set_position_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Unit = "webapi_Selection" "setPosition"

///|
fn selection_collapse_to_start_ffi(obj : JsValue) -> Unit = "webapi_Selection" "collapseToStart"

///|
fn selection_collapse_to_end_ffi(obj : JsValue) -> Unit = "webapi_Selection" "collapseToEnd"

///|
fn selection_extend_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Unit = "webapi_Selection" "extend"

///|
fn selection_set_base_and_extent_ffi(
  obj : JsValue,
  anchor_node : JsValue,
  anchor_offset : JsValue,
  focus_node : JsValue,
  focus_offset : JsValue,
) -> Unit = "webapi_Selection" "setBaseAndExtent"

///|
fn selection_select_all_children_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Selection" "selectAllChildren"

///|
fn selection_modify_ffi(
  obj : JsValue,
  alter : JsValue,
  direction : JsValue,
  granularity : JsValue,
) -> Unit = "webapi_Selection" "modify"

///|
fn selection_delete_from_document_ffi(obj : JsValue) -> Unit = "webapi_Selection" "deleteFromDocument"

///|
fn selection_contains_node_ffi(
  obj : JsValue,
  node : JsValue,
  allow_partial_containment : JsValue,
) -> Bool = "webapi_Selection" "containsNode"
