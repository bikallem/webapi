// Do not edit. This file is generated.
// MoonBit type: Range
// Specifications: cssom-view.idl, dom.idl, html.idl

/// [Range](https://developer.mozilla.org/en-US/docs/Web/API/Range)
#external
pub type Range

pub impl TJsValue for Range with to_js(self: Range) -> JsValue = "%identity"

pub impl FromJsAny for Range with from_js_any(value : JsAny) -> Range = "%identity"

pub fn[T: TRange] Range::into(self : Range) -> T = "%identity"

pub impl TRange for Range

pub impl TAbstractRange for Range

pub fn Range::new() -> Range {
  range_new_ffi()
}

pub const RANGE_START_TO_START: UInt = 0

pub const RANGE_START_TO_END: UInt = 1

pub const RANGE_END_TO_END: UInt = 2

pub const RANGE_END_TO_START: UInt = 3

pub(open) trait TRangeCreateContextualFragmentString : TJsValue {}

pub impl TRangeCreateContextualFragmentString for TrustedHTML

pub impl TRangeCreateContextualFragmentString for String

/// [Range](https://developer.mozilla.org/en-US/docs/Web/API/Range) interface.
pub trait TRange: TAbstractRange {
  common_ancestor_container(self : Self) -> Node = _
  set_start(self : Self, node : &TNode, offset : UInt) -> Unit = _
  set_end(self : Self, node : &TNode, offset : UInt) -> Unit = _
  set_start_before(self : Self, node : &TNode) -> Unit = _
  set_start_after(self : Self, node : &TNode) -> Unit = _
  set_end_before(self : Self, node : &TNode) -> Unit = _
  set_end_after(self : Self, node : &TNode) -> Unit = _
  collapse(self : Self, to_start? : Bool) -> Unit = _
  select_node(self : Self, node : &TNode) -> Unit = _
  select_node_contents(self : Self, node : &TNode) -> Unit = _
  compare_boundary_points(self : Self, how : UInt, source_range : &TRange) -> Int = _
  delete_contents(self : Self) -> Unit = _
  extract_contents(self : Self) -> DocumentFragment = _
  clone_contents(self : Self) -> DocumentFragment = _
  insert_node(self : Self, node : &TNode) -> Unit = _
  surround_contents(self : Self, new_parent : &TNode) -> Unit = _
  clone_range(self : Self) -> Range = _
  detach(self : Self) -> Unit = _
  is_point_in_range(self : Self, node : &TNode, offset : UInt) -> Bool = _
  compare_point(self : Self, node : &TNode, offset : UInt) -> Int = _
  intersects_node(self : Self, node : &TNode) -> Bool = _
  create_contextual_fragment(self : Self, string : &TRangeCreateContextualFragmentString) -> DocumentFragment = _
  get_client_rects(self : Self) -> DOMRectList = _
  get_bounding_client_rect(self : Self) -> DOMRect = _
}

/// [Range.commonAncestorContainer](https://developer.mozilla.org/en-US/docs/Web/API/Range/commonAncestorContainer)
impl TRange with common_ancestor_container(self : Self) -> Node {
  range_common_ancestor_container_ffi(TJsValue::to_js(self))
}

/// [Range.setStart](https://developer.mozilla.org/en-US/docs/Web/API/Range/setStart)
impl TRange with set_start(self : Self, 
node : &TNode, 
offset : UInt) -> Unit {
  range_set_start_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(offset))
}

/// [Range.setEnd](https://developer.mozilla.org/en-US/docs/Web/API/Range/setEnd)
impl TRange with set_end(self : Self, 
node : &TNode, 
offset : UInt) -> Unit {
  range_set_end_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(offset))
}

/// [Range.setStartBefore](https://developer.mozilla.org/en-US/docs/Web/API/Range/setStartBefore)
impl TRange with set_start_before(self : Self, 
node : &TNode) -> Unit {
  range_set_start_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.setStartAfter](https://developer.mozilla.org/en-US/docs/Web/API/Range/setStartAfter)
impl TRange with set_start_after(self : Self, 
node : &TNode) -> Unit {
  range_set_start_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.setEndBefore](https://developer.mozilla.org/en-US/docs/Web/API/Range/setEndBefore)
impl TRange with set_end_before(self : Self, 
node : &TNode) -> Unit {
  range_set_end_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.setEndAfter](https://developer.mozilla.org/en-US/docs/Web/API/Range/setEndAfter)
impl TRange with set_end_after(self : Self, 
node : &TNode) -> Unit {
  range_set_end_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.collapse](https://developer.mozilla.org/en-US/docs/Web/API/Range/collapse)
impl TRange with collapse(self : Self, 
to_start? : Bool) -> Unit {
  range_collapse_ffi(TJsValue::to_js(self), opt_to_js(to_start))
}

/// [Range.selectNode](https://developer.mozilla.org/en-US/docs/Web/API/Range/selectNode)
impl TRange with select_node(self : Self, 
node : &TNode) -> Unit {
  range_select_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.selectNodeContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/selectNodeContents)
impl TRange with select_node_contents(self : Self, 
node : &TNode) -> Unit {
  range_select_node_contents_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.compareBoundaryPoints](https://developer.mozilla.org/en-US/docs/Web/API/Range/compareBoundaryPoints)
impl TRange with compare_boundary_points(self : Self, 
how : UInt, 
source_range : &TRange) -> Int {
  range_compare_boundary_points_ffi(TJsValue::to_js(self), TJsValue::to_js(how), TJsValue::to_js(source_range))
}

/// [Range.deleteContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/deleteContents)
impl TRange with delete_contents(self : Self) -> Unit {
  range_delete_contents_ffi(TJsValue::to_js(self))
}

/// [Range.extractContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/extractContents)
impl TRange with extract_contents(self : Self) -> DocumentFragment {
  range_extract_contents_ffi(TJsValue::to_js(self))
}

/// [Range.cloneContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/cloneContents)
impl TRange with clone_contents(self : Self) -> DocumentFragment {
  range_clone_contents_ffi(TJsValue::to_js(self))
}

/// [Range.insertNode](https://developer.mozilla.org/en-US/docs/Web/API/Range/insertNode)
impl TRange with insert_node(self : Self, 
node : &TNode) -> Unit {
  range_insert_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.surroundContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/surroundContents)
impl TRange with surround_contents(self : Self, 
new_parent : &TNode) -> Unit {
  range_surround_contents_ffi(TJsValue::to_js(self), TJsValue::to_js(new_parent))
}

/// [Range.cloneRange](https://developer.mozilla.org/en-US/docs/Web/API/Range/cloneRange)
impl TRange with clone_range(self : Self) -> Range {
  range_clone_range_ffi(TJsValue::to_js(self))
}

/// [Range.detach](https://developer.mozilla.org/en-US/docs/Web/API/Range/detach)
impl TRange with detach(self : Self) -> Unit {
  range_detach_ffi(TJsValue::to_js(self))
}

/// [Range.isPointInRange](https://developer.mozilla.org/en-US/docs/Web/API/Range/isPointInRange)
impl TRange with is_point_in_range(self : Self, 
node : &TNode, 
offset : UInt) -> Bool {
  range_is_point_in_range_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(offset))
}

/// [Range.comparePoint](https://developer.mozilla.org/en-US/docs/Web/API/Range/comparePoint)
impl TRange with compare_point(self : Self, 
node : &TNode, 
offset : UInt) -> Int {
  range_compare_point_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(offset))
}

/// [Range.intersectsNode](https://developer.mozilla.org/en-US/docs/Web/API/Range/intersectsNode)
impl TRange with intersects_node(self : Self, 
node : &TNode) -> Bool {
  range_intersects_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Range.createContextualFragment](https://developer.mozilla.org/en-US/docs/Web/API/Range/createContextualFragment)
impl TRange with create_contextual_fragment(self : Self, 
string : &TRangeCreateContextualFragmentString) -> DocumentFragment {
  range_create_contextual_fragment_ffi(TJsValue::to_js(self), string.to_js())
}

/// [Range.getClientRects](https://developer.mozilla.org/en-US/docs/Web/API/Range/getClientRects)
impl TRange with get_client_rects(self : Self) -> DOMRectList {
  range_get_client_rects_ffi(TJsValue::to_js(self))
}

/// [Range.getBoundingClientRect](https://developer.mozilla.org/en-US/docs/Web/API/Range/getBoundingClientRect)
impl TRange with get_bounding_client_rect(self : Self) -> DOMRect {
  range_get_bounding_client_rect_ffi(TJsValue::to_js(self))
}