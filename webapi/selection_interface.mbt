// Do not edit. This file is generated.
// MoonBit type: Selection
// Specifications: selection-api.idl

///|
/// [Selection](https://developer.mozilla.org/en-US/docs/Web/API/Selection)
#external
pub type Selection

///|
pub impl TJsValue for Selection with to_js(self : Selection) -> JsValue = "%identity"

///|
pub impl FromJsAny for Selection with from_js_any(value : JsAny) -> Selection = "%identity"

///|
pub fn[T : TSelection] Selection::into(self : Selection) -> T = "%identity"

///|
pub impl TSelection for Selection

///|
/// [Selection](https://developer.mozilla.org/en-US/docs/Web/API/Selection) interface.
pub trait TSelection: TJsValue {
  anchor_node(self : Self) -> Node = _
  anchor_offset(self : Self) -> UInt = _
  focus_node(self : Self) -> Node = _
  focus_offset(self : Self) -> UInt = _
  is_collapsed(self : Self) -> Bool = _
  range_count(self : Self) -> UInt = _
  type_(self : Self) -> String = _
  direction(self : Self) -> String = _
  get_range_at(self : Self, index : UInt) -> Range = _
  add_range(self : Self, range : &TRange) -> Unit = _
  remove_range(self : Self, range : &TRange) -> Unit = _
  remove_all_ranges(self : Self) -> Unit = _
  empty(self : Self) -> Unit = _
  get_composed_ranges(self : Self, options? : GetComposedRangesOptions) -> Array[
    StaticRange,
  ] = _
  collapse(self : Self, node : &TNode, offset? : UInt) -> Unit = _
  set_position(self : Self, node : &TNode, offset? : UInt) -> Unit = _
  collapse_to_start(self : Self) -> Unit = _
  collapse_to_end(self : Self) -> Unit = _
  extend(self : Self, node : &TNode, offset? : UInt) -> Unit = _
  set_base_and_extent(
    self : Self,
    anchor_node : &TNode,
    anchor_offset : UInt,
    focus_node : &TNode,
    focus_offset : UInt,
  ) -> Unit = _
  select_all_children(self : Self, node : &TNode) -> Unit = _
  modify(
    self : Self,
    alter? : String,
    direction? : String,
    granularity? : String,
  ) -> Unit = _
  delete_from_document(self : Self) -> Unit = _
  contains_node(self : Self, node : &TNode, allow_partial_containment? : Bool) -> Bool = _
}

///|
/// [Selection.anchorNode](https://developer.mozilla.org/en-US/docs/Web/API/Selection/anchorNode)
impl TSelection with anchor_node(self : Self) -> Node {
  selection_anchor_node_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.anchorOffset](https://developer.mozilla.org/en-US/docs/Web/API/Selection/anchorOffset)
impl TSelection with anchor_offset(self : Self) -> UInt {
  selection_anchor_offset_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.focusNode](https://developer.mozilla.org/en-US/docs/Web/API/Selection/focusNode)
impl TSelection with focus_node(self : Self) -> Node {
  selection_focus_node_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.focusOffset](https://developer.mozilla.org/en-US/docs/Web/API/Selection/focusOffset)
impl TSelection with focus_offset(self : Self) -> UInt {
  selection_focus_offset_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.isCollapsed](https://developer.mozilla.org/en-US/docs/Web/API/Selection/isCollapsed)
impl TSelection with is_collapsed(self : Self) -> Bool {
  selection_is_collapsed_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.rangeCount](https://developer.mozilla.org/en-US/docs/Web/API/Selection/rangeCount)
impl TSelection with range_count(self : Self) -> UInt {
  selection_range_count_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.type](https://developer.mozilla.org/en-US/docs/Web/API/Selection/type)
impl TSelection with type_(self : Self) -> String {
  selection_type_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.direction](https://developer.mozilla.org/en-US/docs/Web/API/Selection/direction)
impl TSelection with direction(self : Self) -> String {
  selection_direction_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.getRangeAt](https://developer.mozilla.org/en-US/docs/Web/API/Selection/getRangeAt)
impl TSelection with get_range_at(self : Self, index : UInt) -> Range {
  selection_get_range_at_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [Selection.addRange](https://developer.mozilla.org/en-US/docs/Web/API/Selection/addRange)
impl TSelection with add_range(self : Self, range : &TRange) -> Unit {
  selection_add_range_ffi(TJsValue::to_js(self), TJsValue::to_js(range))
}

///|
/// [Selection.removeRange](https://developer.mozilla.org/en-US/docs/Web/API/Selection/removeRange)
impl TSelection with remove_range(self : Self, range : &TRange) -> Unit {
  selection_remove_range_ffi(TJsValue::to_js(self), TJsValue::to_js(range))
}

///|
/// [Selection.removeAllRanges](https://developer.mozilla.org/en-US/docs/Web/API/Selection/removeAllRanges)
impl TSelection with remove_all_ranges(self : Self) -> Unit {
  selection_remove_all_ranges_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.empty](https://developer.mozilla.org/en-US/docs/Web/API/Selection/empty)
impl TSelection with empty(self : Self) -> Unit {
  selection_empty_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.getComposedRanges](https://developer.mozilla.org/en-US/docs/Web/API/Selection/getComposedRanges)
impl TSelection with get_composed_ranges(
  self : Self,
  options? : GetComposedRangesOptions = GetComposedRangesOptions::empty(),
) -> Array[StaticRange] {
  selection_get_composed_ranges_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
/// [Selection.collapse](https://developer.mozilla.org/en-US/docs/Web/API/Selection/collapse)
impl TSelection with collapse(
  self : Self,
  node : &TNode,
  offset? : UInt = (0 : UInt),
) -> Unit {
  selection_collapse_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
/// [Selection.setPosition](https://developer.mozilla.org/en-US/docs/Web/API/Selection/setPosition)
impl TSelection with set_position(
  self : Self,
  node : &TNode,
  offset? : UInt = (0 : UInt),
) -> Unit {
  selection_set_position_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
/// [Selection.collapseToStart](https://developer.mozilla.org/en-US/docs/Web/API/Selection/collapseToStart)
impl TSelection with collapse_to_start(self : Self) -> Unit {
  selection_collapse_to_start_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.collapseToEnd](https://developer.mozilla.org/en-US/docs/Web/API/Selection/collapseToEnd)
impl TSelection with collapse_to_end(self : Self) -> Unit {
  selection_collapse_to_end_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.extend](https://developer.mozilla.org/en-US/docs/Web/API/Selection/extend)
impl TSelection with extend(
  self : Self,
  node : &TNode,
  offset? : UInt = (0 : UInt),
) -> Unit {
  selection_extend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
/// [Selection.setBaseAndExtent](https://developer.mozilla.org/en-US/docs/Web/API/Selection/setBaseAndExtent)
impl TSelection with set_base_and_extent(
  self : Self,
  anchor_node : &TNode,
  anchor_offset : UInt,
  focus_node : &TNode,
  focus_offset : UInt,
) -> Unit {
  selection_set_base_and_extent_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(anchor_node),
    TJsValue::to_js(anchor_offset),
    TJsValue::to_js(focus_node),
    TJsValue::to_js(focus_offset),
  )
}

///|
/// [Selection.selectAllChildren](https://developer.mozilla.org/en-US/docs/Web/API/Selection/selectAllChildren)
impl TSelection with select_all_children(self : Self, node : &TNode) -> Unit {
  selection_select_all_children_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
  )
}

///|
/// [Selection.modify](https://developer.mozilla.org/en-US/docs/Web/API/Selection/modify)
impl TSelection with modify(
  self : Self,
  alter? : String,
  direction? : String,
  granularity? : String,
) -> Unit {
  selection_modify_ffi(
    TJsValue::to_js(self),
    opt_to_js(alter),
    opt_to_js(direction),
    opt_to_js(granularity),
  )
}

///|
/// [Selection.deleteFromDocument](https://developer.mozilla.org/en-US/docs/Web/API/Selection/deleteFromDocument)
impl TSelection with delete_from_document(self : Self) -> Unit {
  selection_delete_from_document_ffi(TJsValue::to_js(self))
}

///|
/// [Selection.containsNode](https://developer.mozilla.org/en-US/docs/Web/API/Selection/containsNode)
impl TSelection with contains_node(
  self : Self,
  node : &TNode,
  allow_partial_containment? : Bool = false,
) -> Bool {
  selection_contains_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(allow_partial_containment),
  )
}
