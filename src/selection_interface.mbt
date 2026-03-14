// Do not edit. This file is generated.
// MoonBit type: Selection
// Specifications: selection-api.idl

/// [Selection](https://developer.mozilla.org/en-US/docs/Web/API/Selection)
#external
pub type Selection

pub impl TJsValue for Selection with to_js(self: Selection) -> JsValue = "%identity"

pub impl FromJsAny for Selection with from_js_any(value : JsAny) -> Selection = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSelection] Selection::into(self : Selection) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSelection] Selection::unsafe_into(self : Selection) -> T = "%identity"

pub impl HasConstructor for Selection with constructor_name() { "Selection" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSelection + HasConstructor] Selection::try_into(self : Selection) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSelection for Selection

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
  get_composed_ranges(self : Self, options? : GetComposedRangesOptions) -> Array[StaticRange] = _
  collapse(self : Self, node : &TNode, offset? : UInt) -> Unit = _
  set_position(self : Self, node : &TNode, offset? : UInt) -> Unit = _
  collapse_to_start(self : Self) -> Unit = _
  collapse_to_end(self : Self) -> Unit = _
  extend(self : Self, node : &TNode, offset? : UInt) -> Unit = _
  set_base_and_extent(self : Self, anchor_node : &TNode, anchor_offset : UInt, focus_node : &TNode, focus_offset : UInt) -> Unit = _
  select_all_children(self : Self, node : &TNode) -> Unit = _
  modify(self : Self, alter? : String, direction? : String, granularity? : String) -> Unit = _
  delete_from_document(self : Self) -> Unit = _
  contains_node(self : Self, node : &TNode, allow_partial_containment? : Bool) -> Bool = _
}

/// [Selection.anchorNode](https://developer.mozilla.org/en-US/docs/Web/API/Selection/anchorNode)
impl TSelection with anchor_node(self : Self) -> Node {
  selection_anchor_node_ffi(TJsValue::to_js(self))
}

/// [Selection.anchorOffset](https://developer.mozilla.org/en-US/docs/Web/API/Selection/anchorOffset)
impl TSelection with anchor_offset(self : Self) -> UInt {
  selection_anchor_offset_ffi(TJsValue::to_js(self))
}

/// [Selection.focusNode](https://developer.mozilla.org/en-US/docs/Web/API/Selection/focusNode)
impl TSelection with focus_node(self : Self) -> Node {
  selection_focus_node_ffi(TJsValue::to_js(self))
}

/// [Selection.focusOffset](https://developer.mozilla.org/en-US/docs/Web/API/Selection/focusOffset)
impl TSelection with focus_offset(self : Self) -> UInt {
  selection_focus_offset_ffi(TJsValue::to_js(self))
}

/// [Selection.isCollapsed](https://developer.mozilla.org/en-US/docs/Web/API/Selection/isCollapsed)
impl TSelection with is_collapsed(self : Self) -> Bool {
  selection_is_collapsed_ffi(TJsValue::to_js(self))
}

/// [Selection.rangeCount](https://developer.mozilla.org/en-US/docs/Web/API/Selection/rangeCount)
impl TSelection with range_count(self : Self) -> UInt {
  selection_range_count_ffi(TJsValue::to_js(self))
}

/// [Selection.type](https://developer.mozilla.org/en-US/docs/Web/API/Selection/type)
impl TSelection with type_(self : Self) -> String {
  selection_type_ffi(TJsValue::to_js(self))
}

/// [Selection.direction](https://developer.mozilla.org/en-US/docs/Web/API/Selection/direction)
impl TSelection with direction(self : Self) -> String {
  selection_direction_ffi(TJsValue::to_js(self))
}

/// [Selection.getRangeAt](https://developer.mozilla.org/en-US/docs/Web/API/Selection/getRangeAt)
impl TSelection with get_range_at(self : Self, 
index : UInt) -> Range {
  selection_get_range_at_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

/// [Selection.addRange](https://developer.mozilla.org/en-US/docs/Web/API/Selection/addRange)
impl TSelection with add_range(self : Self, 
range : &TRange) -> Unit {
  selection_add_range_ffi(TJsValue::to_js(self), TJsValue::to_js(range))
}

/// [Selection.removeRange](https://developer.mozilla.org/en-US/docs/Web/API/Selection/removeRange)
impl TSelection with remove_range(self : Self, 
range : &TRange) -> Unit {
  selection_remove_range_ffi(TJsValue::to_js(self), TJsValue::to_js(range))
}

/// [Selection.removeAllRanges](https://developer.mozilla.org/en-US/docs/Web/API/Selection/removeAllRanges)
impl TSelection with remove_all_ranges(self : Self) -> Unit {
  selection_remove_all_ranges_ffi(TJsValue::to_js(self))
}

/// [Selection.empty](https://developer.mozilla.org/en-US/docs/Web/API/Selection/empty)
impl TSelection with empty(self : Self) -> Unit {
  selection_empty_ffi(TJsValue::to_js(self))
}

/// [Selection.getComposedRanges](https://developer.mozilla.org/en-US/docs/Web/API/Selection/getComposedRanges)
impl TSelection with get_composed_ranges(self : Self, 
options? : GetComposedRangesOptions) -> Array[StaticRange] {
  selection_get_composed_ranges_ffi(TJsValue::to_js(self), opt_to_js(options))
}

/// [Selection.collapse](https://developer.mozilla.org/en-US/docs/Web/API/Selection/collapse)
impl TSelection with collapse(self : Self, 
node : &TNode, 
offset? : UInt) -> Unit {
  selection_collapse_ffi(TJsValue::to_js(self), TJsValue::to_js(node), opt_to_js(offset))
}

/// [Selection.setPosition](https://developer.mozilla.org/en-US/docs/Web/API/Selection/setPosition)
impl TSelection with set_position(self : Self, 
node : &TNode, 
offset? : UInt) -> Unit {
  selection_set_position_ffi(TJsValue::to_js(self), TJsValue::to_js(node), opt_to_js(offset))
}

/// [Selection.collapseToStart](https://developer.mozilla.org/en-US/docs/Web/API/Selection/collapseToStart)
impl TSelection with collapse_to_start(self : Self) -> Unit {
  selection_collapse_to_start_ffi(TJsValue::to_js(self))
}

/// [Selection.collapseToEnd](https://developer.mozilla.org/en-US/docs/Web/API/Selection/collapseToEnd)
impl TSelection with collapse_to_end(self : Self) -> Unit {
  selection_collapse_to_end_ffi(TJsValue::to_js(self))
}

/// [Selection.extend](https://developer.mozilla.org/en-US/docs/Web/API/Selection/extend)
impl TSelection with extend(self : Self, 
node : &TNode, 
offset? : UInt) -> Unit {
  selection_extend_ffi(TJsValue::to_js(self), TJsValue::to_js(node), opt_to_js(offset))
}

/// [Selection.setBaseAndExtent](https://developer.mozilla.org/en-US/docs/Web/API/Selection/setBaseAndExtent)
impl TSelection with set_base_and_extent(self : Self, 
anchor_node : &TNode, 
anchor_offset : UInt, 
focus_node : &TNode, 
focus_offset : UInt) -> Unit {
  selection_set_base_and_extent_ffi(TJsValue::to_js(self), TJsValue::to_js(anchor_node), TJsValue::to_js(anchor_offset), TJsValue::to_js(focus_node), TJsValue::to_js(focus_offset))
}

/// [Selection.selectAllChildren](https://developer.mozilla.org/en-US/docs/Web/API/Selection/selectAllChildren)
impl TSelection with select_all_children(self : Self, 
node : &TNode) -> Unit {
  selection_select_all_children_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Selection.modify](https://developer.mozilla.org/en-US/docs/Web/API/Selection/modify)
impl TSelection with modify(self : Self, 
alter? : String, 
direction? : String, 
granularity? : String) -> Unit {
  selection_modify_ffi(TJsValue::to_js(self), opt_to_js(alter), opt_to_js(direction), opt_to_js(granularity))
}

/// [Selection.deleteFromDocument](https://developer.mozilla.org/en-US/docs/Web/API/Selection/deleteFromDocument)
impl TSelection with delete_from_document(self : Self) -> Unit {
  selection_delete_from_document_ffi(TJsValue::to_js(self))
}

/// [Selection.containsNode](https://developer.mozilla.org/en-US/docs/Web/API/Selection/containsNode)
impl TSelection with contains_node(self : Self, 
node : &TNode, 
allow_partial_containment? : Bool) -> Bool {
  selection_contains_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node), opt_to_js(allow_partial_containment))
}

#cfg(target="js")
extern "js" fn selection_anchor_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.anchorNode"

///|
#cfg(target="js")
fn selection_anchor_node_ffi(obj: JsValue) -> Node {
  selection_anchor_node_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_anchor_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.anchorOffset"

///|
#cfg(target="js")
fn selection_anchor_offset_ffi(obj: JsValue) -> UInt {
  selection_anchor_offset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_focus_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.focusNode"

///|
#cfg(target="js")
fn selection_focus_node_ffi(obj: JsValue) -> Node {
  selection_focus_node_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_focus_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.focusOffset"

///|
#cfg(target="js")
fn selection_focus_offset_ffi(obj: JsValue) -> UInt {
  selection_focus_offset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_is_collapsed_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isCollapsed"

///|
#cfg(target="js")
fn selection_is_collapsed_ffi(obj: JsValue) -> Bool {
  selection_is_collapsed_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_range_count_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rangeCount"

///|
#cfg(target="js")
fn selection_range_count_ffi(obj: JsValue) -> UInt {
  selection_range_count_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn selection_type_ffi(obj: JsValue) -> String {
  selection_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.direction"

///|
#cfg(target="js")
fn selection_direction_ffi(obj: JsValue) -> String {
  selection_direction_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_get_range_at_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.getRangeAt(index)"

///|
#cfg(target="js")
fn selection_get_range_at_ffi(obj: JsValue, index: JsValue) -> Range {
  selection_get_range_at_ffi_js(obj, index).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_add_range_ffi(obj: JsValue, range: JsValue) -> Unit = "(obj, range) => obj.addRange(range)"

#cfg(target="js")
extern "js" fn selection_remove_range_ffi(obj: JsValue, range: JsValue) -> Unit = "(obj, range) => obj.removeRange(range)"

#cfg(target="js")
extern "js" fn selection_remove_all_ranges_ffi(obj: JsValue) -> Unit = "(obj) => obj.removeAllRanges()"

#cfg(target="js")
extern "js" fn selection_empty_ffi(obj: JsValue) -> Unit = "(obj) => obj.empty()"

#cfg(target="js")
extern "js" fn selection_get_composed_ranges_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getComposedRanges(options)"

///|
#cfg(target="js")
fn selection_get_composed_ranges_ffi(obj: JsValue, options: JsValue) -> Array[StaticRange] {
  selection_get_composed_ranges_ffi_js(obj, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn selection_collapse_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.collapse(node, offset)"

#cfg(target="js")
extern "js" fn selection_set_position_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.setPosition(node, offset)"

#cfg(target="js")
extern "js" fn selection_collapse_to_start_ffi(obj: JsValue) -> Unit = "(obj) => obj.collapseToStart()"

#cfg(target="js")
extern "js" fn selection_collapse_to_end_ffi(obj: JsValue) -> Unit = "(obj) => obj.collapseToEnd()"

#cfg(target="js")
extern "js" fn selection_extend_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "(obj, node, offset) => obj.extend(node, offset)"

#cfg(target="js")
extern "js" fn selection_set_base_and_extent_ffi(obj: JsValue, anchor_node: JsValue, anchor_offset: JsValue, focus_node: JsValue, focus_offset: JsValue) -> Unit = "(obj, anchor_node, anchor_offset, focus_node, focus_offset) => obj.setBaseAndExtent(anchor_node, anchor_offset, focus_node, focus_offset)"

#cfg(target="js")
extern "js" fn selection_select_all_children_ffi(obj: JsValue, node: JsValue) -> Unit = "(obj, node) => obj.selectAllChildren(node)"

#cfg(target="js")
extern "js" fn selection_modify_ffi(obj: JsValue, alter: JsValue, direction: JsValue, granularity: JsValue) -> Unit = "(obj, alter, direction, granularity) => obj.modify(alter, direction, granularity)"

#cfg(target="js")
extern "js" fn selection_delete_from_document_ffi(obj: JsValue) -> Unit = "(obj) => obj.deleteFromDocument()"

#cfg(target="js")
extern "js" fn selection_contains_node_ffi_js(obj: JsValue, node: JsValue, allow_partial_containment: JsValue) -> JsValue = "(obj, node, allow_partial_containment) => obj.containsNode(node, allow_partial_containment)"

///|
#cfg(target="js")
fn selection_contains_node_ffi(obj: JsValue, node: JsValue, allow_partial_containment: JsValue) -> Bool {
  selection_contains_node_ffi_js(obj, node, allow_partial_containment).unsafe_cast()
}

#cfg(target="wasm-gc")
fn selection_anchor_node_ffi(obj: JsValue) -> Node = "webapi_Selection" "get_anchorNode"

#cfg(target="wasm-gc")
fn selection_anchor_offset_ffi(obj: JsValue) -> UInt = "webapi_Selection" "get_anchorOffset"

#cfg(target="wasm-gc")
fn selection_focus_node_ffi(obj: JsValue) -> Node = "webapi_Selection" "get_focusNode"

#cfg(target="wasm-gc")
fn selection_focus_offset_ffi(obj: JsValue) -> UInt = "webapi_Selection" "get_focusOffset"

#cfg(target="wasm-gc")
fn selection_is_collapsed_ffi(obj: JsValue) -> Bool = "webapi_Selection" "get_isCollapsed"

#cfg(target="wasm-gc")
fn selection_range_count_ffi(obj: JsValue) -> UInt = "webapi_Selection" "get_rangeCount"

#cfg(target="wasm-gc")
fn selection_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Selection" "get_type"

///|
#cfg(target="wasm-gc")
fn selection_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(selection_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn selection_direction_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Selection" "get_direction"

///|
#cfg(target="wasm-gc")
fn selection_direction_ffi(obj: JsValue) -> String {
  jsvalue_to_string(selection_direction_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn selection_get_range_at_ffi(obj: JsValue, index: JsValue) -> Range = "webapi_Selection" "getRangeAt"

#cfg(target="wasm-gc")
fn selection_add_range_ffi(obj: JsValue, range: JsValue) -> Unit = "webapi_Selection" "addRange"

#cfg(target="wasm-gc")
fn selection_remove_range_ffi(obj: JsValue, range: JsValue) -> Unit = "webapi_Selection" "removeRange"

#cfg(target="wasm-gc")
fn selection_remove_all_ranges_ffi(obj: JsValue) -> Unit = "webapi_Selection" "removeAllRanges"

#cfg(target="wasm-gc")
fn selection_empty_ffi(obj: JsValue) -> Unit = "webapi_Selection" "empty"

#cfg(target="wasm-gc")
fn selection_get_composed_ranges_ffi_wasm(obj: JsValue, options: JsValue) -> JsArray = "webapi_Selection" "getComposedRanges"

///|
#cfg(target="wasm-gc")
fn selection_get_composed_ranges_ffi(obj: JsValue, options: JsValue) -> Array[StaticRange] {
  selection_get_composed_ranges_ffi_wasm(obj, options).to_array()
}

#cfg(target="wasm-gc")
fn selection_collapse_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "webapi_Selection" "collapse"

#cfg(target="wasm-gc")
fn selection_set_position_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "webapi_Selection" "setPosition"

#cfg(target="wasm-gc")
fn selection_collapse_to_start_ffi(obj: JsValue) -> Unit = "webapi_Selection" "collapseToStart"

#cfg(target="wasm-gc")
fn selection_collapse_to_end_ffi(obj: JsValue) -> Unit = "webapi_Selection" "collapseToEnd"

#cfg(target="wasm-gc")
fn selection_extend_ffi(obj: JsValue, node: JsValue, offset: JsValue) -> Unit = "webapi_Selection" "extend"

#cfg(target="wasm-gc")
fn selection_set_base_and_extent_ffi(obj: JsValue, anchor_node: JsValue, anchor_offset: JsValue, focus_node: JsValue, focus_offset: JsValue) -> Unit = "webapi_Selection" "setBaseAndExtent"

#cfg(target="wasm-gc")
fn selection_select_all_children_ffi(obj: JsValue, node: JsValue) -> Unit = "webapi_Selection" "selectAllChildren"

#cfg(target="wasm-gc")
fn selection_modify_ffi(obj: JsValue, alter: JsValue, direction: JsValue, granularity: JsValue) -> Unit = "webapi_Selection" "modify"

#cfg(target="wasm-gc")
fn selection_delete_from_document_ffi(obj: JsValue) -> Unit = "webapi_Selection" "deleteFromDocument"

#cfg(target="wasm-gc")
fn selection_contains_node_ffi(obj: JsValue, node: JsValue, allow_partial_containment: JsValue) -> Bool = "webapi_Selection" "containsNode"