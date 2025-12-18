// Auto-generated MoonBit bindings for Range interface
// Do not edit manually

#external
pub type Range

pub impl TJsValue for Range with to_js(self: Range) -> JsValue = "%identity"


pub fn[T: TRange] Range::into(self : Range) -> T = "%identity"
pub impl TRange for Range

pub fn Range::new() -> Range = "webapi_Range" "new"

pub trait TRange: TJsValue + TTAbstractRange {
  common_ancestor_container(self: Self) -> &TNode = _
  set_start(self: Self, node : &TNode, offset : UInt) -> Unit = _
  set_end(self: Self, node : &TNode, offset : UInt) -> Unit = _
  set_start_before(self: Self, node : &TNode) -> Unit = _
  set_start_after(self: Self, node : &TNode) -> Unit = _
  set_end_before(self: Self, node : &TNode) -> Unit = _
  set_end_after(self: Self, node : &TNode) -> Unit = _
  collapse(self: Self, to_start? : Bool) -> Unit = _
  select_node(self: Self, node : &TNode) -> Unit = _
  select_node_contents(self: Self, node : &TNode) -> Unit = _
  compare_boundary_points(self: Self, how : UInt, source_range : &TRange) -> Int = _
  delete_contents(self: Self) -> Unit = _
  extract_contents(self: Self) -> &TDocumentFragment = _
  clone_contents(self: Self) -> &TDocumentFragment = _
  insert_node(self: Self, node : &TNode) -> Unit = _
  surround_contents(self: Self, new_parent : &TNode) -> Unit = _
  clone_range(self: Self) -> &TRange = _
  detach(self: Self) -> Unit = _
  is_point_in_range(self: Self, node : &TNode, offset : UInt) -> Bool = _
  compare_point(self: Self, node : &TNode, offset : UInt) -> Int = _
  intersects_node(self: Self, node : &TNode) -> Bool = _
  create_contextual_fragment(self: Self, string : String) -> &TDocumentFragment = _
  get_client_rects(self: Self) -> DOMRectList = _
  get_bounding_client_rect(self: Self) -> DOMRect = _
}

///|
fn range_common_ancestor_container_ffi(obj : JsValue) -> JsValue = "webapi_Range" "commonAncestorContainer"

///|
impl TRange with common_ancestor_container(self : Self) -> &TNode {
  range_common_ancestor_container_ffi(self.to_js()).unsafe_cast()
}

///|
fn range_set_start_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setStart"

///|
impl TRange with set_start(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_start_ffi(self.to_js(), node.to_js(), TJsValue::to_js(offset))
}

///|
fn range_set_end_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setEnd"

///|
impl TRange with set_end(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_end_ffi(self.to_js(), node.to_js(), TJsValue::to_js(offset))
}

///|
fn range_set_start_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartBefore"

///|
impl TRange with set_start_before(self : Self, node : &TNode) -> Unit {
  range_set_start_before_ffi(self.to_js(), node.to_js())
}

///|
fn range_set_start_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartAfter"

///|
impl TRange with set_start_after(self : Self, node : &TNode) -> Unit {
  range_set_start_after_ffi(self.to_js(), node.to_js())
}

///|
fn range_set_end_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndBefore"

///|
impl TRange with set_end_before(self : Self, node : &TNode) -> Unit {
  range_set_end_before_ffi(self.to_js(), node.to_js())
}

///|
fn range_set_end_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndAfter"

///|
impl TRange with set_end_after(self : Self, node : &TNode) -> Unit {
  range_set_end_after_ffi(self.to_js(), node.to_js())
}

///|
fn range_collapse_ffi(obj : JsValue, to_start : JsValue) -> Unit = "webapi_Range" "collapse"

///|
impl TRange with collapse(self : Self, to_start? : Bool) -> Unit {
  range_collapse_ffi(self.to_js(), TJsValue::to_js(to_start))
}

///|
fn range_select_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNode"

///|
impl TRange with select_node(self : Self, node : &TNode) -> Unit {
  range_select_node_ffi(self.to_js(), node.to_js())
}

///|
fn range_select_node_contents_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNodeContents"

///|
impl TRange with select_node_contents(self : Self, node : &TNode) -> Unit {
  range_select_node_contents_ffi(self.to_js(), node.to_js())
}

///|
fn range_compare_boundary_points_ffi(obj : JsValue, how : JsValue, source_range : JsValue) -> Int = "webapi_Range" "compareBoundaryPoints"

///|
impl TRange with compare_boundary_points(self : Self, how : UInt, source_range : &TRange) -> Int {
  range_compare_boundary_points_ffi(self.to_js(), TJsValue::to_js(how), source_range.to_js())
}

///|
fn range_delete_contents_ffi(obj : JsValue) -> Unit = "webapi_Range" "deleteContents"

///|
impl TRange with delete_contents(self : Self) -> Unit {
  range_delete_contents_ffi(self.to_js())
}

///|
fn range_extract_contents_ffi(obj : JsValue) -> JsValue = "webapi_Range" "extractContents"

///|
impl TRange with extract_contents(self : Self) -> &TDocumentFragment {
  range_extract_contents_ffi(self.to_js()).unsafe_cast()
}

///|
fn range_clone_contents_ffi(obj : JsValue) -> JsValue = "webapi_Range" "cloneContents"

///|
impl TRange with clone_contents(self : Self) -> &TDocumentFragment {
  range_clone_contents_ffi(self.to_js()).unsafe_cast()
}

///|
fn range_insert_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "insertNode"

///|
impl TRange with insert_node(self : Self, node : &TNode) -> Unit {
  range_insert_node_ffi(self.to_js(), node.to_js())
}

///|
fn range_surround_contents_ffi(obj : JsValue, new_parent : JsValue) -> Unit = "webapi_Range" "surroundContents"

///|
impl TRange with surround_contents(self : Self, new_parent : &TNode) -> Unit {
  range_surround_contents_ffi(self.to_js(), new_parent.to_js())
}

///|
fn range_clone_range_ffi(obj : JsValue) -> JsValue = "webapi_Range" "cloneRange"

///|
impl TRange with clone_range(self : Self) -> &TRange {
  range_clone_range_ffi(self.to_js()).unsafe_cast()
}

///|
fn range_detach_ffi(obj : JsValue) -> Unit = "webapi_Range" "detach"

///|
impl TRange with detach(self : Self) -> Unit {
  range_detach_ffi(self.to_js())
}

///|
fn range_is_point_in_range_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Bool = "webapi_Range" "isPointInRange"

///|
impl TRange with is_point_in_range(self : Self, node : &TNode, offset : UInt) -> Bool {
  range_is_point_in_range_ffi(self.to_js(), node.to_js(), TJsValue::to_js(offset))
}

///|
fn range_compare_point_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Int = "webapi_Range" "comparePoint"

///|
impl TRange with compare_point(self : Self, node : &TNode, offset : UInt) -> Int {
  range_compare_point_ffi(self.to_js(), node.to_js(), TJsValue::to_js(offset))
}

///|
fn range_intersects_node_ffi(obj : JsValue, node : JsValue) -> Bool = "webapi_Range" "intersectsNode"

///|
impl TRange with intersects_node(self : Self, node : &TNode) -> Bool {
  range_intersects_node_ffi(self.to_js(), node.to_js())
}

///|
fn range_create_contextual_fragment_ffi(obj : JsValue, string : JsValue) -> JsValue = "webapi_Range" "createContextualFragment"

///|
impl TRange with create_contextual_fragment(self : Self, string : String) -> &TDocumentFragment {
  range_create_contextual_fragment_ffi(self.to_js(), TJsValue::to_js(string)).unsafe_cast()
}

///|
fn range_get_client_rects_ffi(obj : JsValue) -> JsValue = "webapi_Range" "getClientRects"

///|
impl TRange with get_client_rects(self : Self) -> DOMRectList {
  range_get_client_rects_ffi(self.to_js()).unsafe_cast()
}

///|
fn range_get_bounding_client_rect_ffi(obj : JsValue) -> JsValue = "webapi_Range" "getBoundingClientRect"

///|
impl TRange with get_bounding_client_rect(self : Self) -> DOMRect {
  range_get_bounding_client_rect_ffi(self.to_js()).unsafe_cast()
}