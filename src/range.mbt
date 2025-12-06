// Auto-generated MoonBit bindings for Range

// Do not edit manually

///|
#external
pub type Range

///|
pub const START_TO_START : UInt = 0

///|
pub const START_TO_END : UInt = 1

///|
pub const END_TO_END : UInt = 2

///|
pub const END_TO_START : UInt = 3

///|
pub trait TRange: TJsValue {
  common_ancestor_container(self : Self) -> Node = _
  get_client_rects(self : Self) -> JsValue = _
  get_bounding_client_rect(self : Self) -> JsValue = _
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
  create_contextual_fragment(
    self : Self,
    string : &TCreateContextualFragmentStringArg,
  ) -> DocumentFragment = _
}

///|
pub impl TRange for Range

///|
pub impl TJsValue for Range with to_js(self : Range) -> JsValue = "%identity"

///|
pub fn Range::null() -> Range {
  JsValue::null()
}

///|
pub fn Range::new() -> Range = "webapi_Range" "new"

///|
fn range_get_client_rects_ffi(obj : JsValue) -> JsValue = "webapi_Range" "getClientRects"

///|
impl TRange with get_client_rects(self : Self) -> JsValue {
  range_get_client_rects_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn range_get_bounding_client_rect_ffi(obj : JsValue) -> JsValue = "webapi_Range" "getBoundingClientRect"

///|
impl TRange with get_bounding_client_rect(self : Self) -> JsValue {
  range_get_bounding_client_rect_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn range_set_start_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setStart"

///|
impl TRange with set_start(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_start_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
fn range_set_end_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setEnd"

///|
impl TRange with set_end(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_end_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
fn range_set_start_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartBefore"

///|
impl TRange with set_start_before(self : Self, node : &TNode) -> Unit {
  range_set_start_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
fn range_set_start_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartAfter"

///|
impl TRange with set_start_after(self : Self, node : &TNode) -> Unit {
  range_set_start_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
fn range_set_end_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndBefore"

///|
impl TRange with set_end_before(self : Self, node : &TNode) -> Unit {
  range_set_end_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
fn range_set_end_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndAfter"

///|
impl TRange with set_end_after(self : Self, node : &TNode) -> Unit {
  range_set_end_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
fn range_collapse_ffi(obj : JsValue, to_start : JsValue) -> Unit = "webapi_Range" "collapse"

///|
impl TRange with collapse(self : Self, to_start? : Bool) -> Unit {
  let to_start_js = opt_to_js(to_start)
  range_collapse_ffi(TJsValue::to_js(self), to_start_js)
}

///|
fn range_select_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNode"

///|
impl TRange with select_node(self : Self, node : &TNode) -> Unit {
  range_select_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
fn range_select_node_contents_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNodeContents"

///|
impl TRange with select_node_contents(self : Self, node : &TNode) -> Unit {
  range_select_node_contents_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
fn range_compare_boundary_points_ffi(
  obj : JsValue,
  how : JsValue,
  source_range : JsValue,
) -> JsValue = "webapi_Range" "compareBoundaryPoints"

///|
impl TRange with compare_boundary_points(
  self : Self,
  how : UInt,
  source_range : &TRange,
) -> Int {
  range_compare_boundary_points_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(how),
    TJsValue::to_js(source_range),
  ).unsafe_cast()
}

///|
fn range_delete_contents_ffi(obj : JsValue) -> Unit = "webapi_Range" "deleteContents"

///|
impl TRange with delete_contents(self : Self) -> Unit {
  range_delete_contents_ffi(TJsValue::to_js(self))
}

///|
fn range_extract_contents_ffi(obj : JsValue) -> JsValue = "webapi_Range" "extractContents"

///|
impl TRange with extract_contents(self : Self) -> DocumentFragment {
  range_extract_contents_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn range_clone_contents_ffi(obj : JsValue) -> JsValue = "webapi_Range" "cloneContents"

///|
impl TRange with clone_contents(self : Self) -> DocumentFragment {
  range_clone_contents_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn range_insert_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "insertNode"

///|
impl TRange with insert_node(self : Self, node : &TNode) -> Unit {
  range_insert_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
fn range_surround_contents_ffi(obj : JsValue, new_parent : JsValue) -> Unit = "webapi_Range" "surroundContents"

///|
impl TRange with surround_contents(self : Self, new_parent : &TNode) -> Unit {
  range_surround_contents_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_parent),
  )
}

///|
fn range_clone_range_ffi(obj : JsValue) -> JsValue = "webapi_Range" "cloneRange"

///|
impl TRange with clone_range(self : Self) -> Range {
  range_clone_range_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn range_detach_ffi(obj : JsValue) -> Unit = "webapi_Range" "detach"

///|
impl TRange with detach(self : Self) -> Unit {
  range_detach_ffi(TJsValue::to_js(self))
}

///|
fn range_is_point_in_range_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> JsValue = "webapi_Range" "isPointInRange"

///|
impl TRange with is_point_in_range(self : Self, node : &TNode, offset : UInt) -> Bool {
  range_is_point_in_range_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  ).unsafe_cast()
}

///|
fn range_compare_point_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> JsValue = "webapi_Range" "comparePoint"

///|
impl TRange with compare_point(self : Self, node : &TNode, offset : UInt) -> Int {
  range_compare_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  ).unsafe_cast()
}

///|
fn range_intersects_node_ffi(obj : JsValue, node : JsValue) -> JsValue = "webapi_Range" "intersectsNode"

///|
impl TRange with intersects_node(self : Self, node : &TNode) -> Bool {
  range_intersects_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node)).unsafe_cast()
}

///|
/// Arg : string
pub(open) trait TCreateContextualFragmentStringArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCreateContextualFragmentStringArg for JsValue with to_js(
  self : JsValue,
) -> JsValue = "%identity"

///|
pub impl TCreateContextualFragmentStringArg for String with to_js(self : String) -> JsValue = "%identity"

///|
fn range_create_contextual_fragment_ffi(
  obj : JsValue,
  string : JsValue,
) -> JsValue = "webapi_Range" "createContextualFragment"

///|
impl TRange with create_contextual_fragment(
  self : Self,
  string : &TCreateContextualFragmentStringArg,
) -> DocumentFragment {
  range_create_contextual_fragment_ffi(TJsValue::to_js(self), string.to_js()).unsafe_cast()
}

///|
fn range_common_ancestor_container_ffi(obj : JsValue) -> JsValue = "webapi_Range" "commonAncestorContainer"

///|
impl TRange with common_ancestor_container(self : Self) -> Node {
  range_common_ancestor_container_ffi(self.to_js()).unsafe_cast()
}
