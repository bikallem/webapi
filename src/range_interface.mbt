///|
#external
pub type Range

///|
pub impl TJsValue for Range with to_js(self : Range) -> JsValue = "%identity"

///|
pub fn[T : TRange] Range::into(self : Range) -> T = "%identity"

///|
pub impl TRange for Range

///|
pub impl TAbstractRange for Range

///|
extern "js" fn range_ffi() -> Range = "() => new Range()"

///|
pub fn Range::new() -> Range {
  range_ffi()
}

///|
pub(open) trait TRangeCreateContextualFragmentStringArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TRangeCreateContextualFragmentStringArg for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TRangeCreateContextualFragmentStringArg for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub trait TRange: TAbstractRange {
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
    string : &TRangeCreateContextualFragmentStringArg,
  ) -> DocumentFragment = _
  get_client_rects(self : Self) -> DOMRectList = _
  get_bounding_client_rect(self : Self) -> DOMRect = _
}

///|
extern "js" fn range_set_start_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Unit = "(obj, node, offset) => obj.setStart(obj, node, offset)"

///|
impl TRange with set_start(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_start_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
extern "js" fn range_set_end_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Unit = "(obj, node, offset) => obj.setEnd(obj, node, offset)"

///|
impl TRange with set_end(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_end_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
extern "js" fn range_set_start_before_ffi(
  obj : JsValue,
  node : JsValue,
) -> Unit = "(obj, node) => obj.setStartBefore(obj, node)"

///|
impl TRange with set_start_before(self : Self, node : &TNode) -> Unit {
  range_set_start_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_set_start_after_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.setStartAfter(obj, node)"

///|
impl TRange with set_start_after(self : Self, node : &TNode) -> Unit {
  range_set_start_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_set_end_before_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.setEndBefore(obj, node)"

///|
impl TRange with set_end_before(self : Self, node : &TNode) -> Unit {
  range_set_end_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_set_end_after_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.setEndAfter(obj, node)"

///|
impl TRange with set_end_after(self : Self, node : &TNode) -> Unit {
  range_set_end_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_collapse_ffi(obj : JsValue, to_start : JsValue) -> Unit = "(obj, to_start) => obj.collapse(obj, to_start)"

///|
impl TRange with collapse(self : Self, to_start? : Bool = false) -> Unit {
  range_collapse_ffi(TJsValue::to_js(self), TJsValue::to_js(to_start))
}

///|
extern "js" fn range_select_node_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.selectNode(obj, node)"

///|
impl TRange with select_node(self : Self, node : &TNode) -> Unit {
  range_select_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_select_node_contents_ffi(
  obj : JsValue,
  node : JsValue,
) -> Unit = "(obj, node) => obj.selectNodeContents(obj, node)"

///|
impl TRange with select_node_contents(self : Self, node : &TNode) -> Unit {
  range_select_node_contents_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_compare_boundary_points_ffi(
  obj : JsValue,
  how : JsValue,
  source_range : JsValue,
) -> Int = "(obj, how, source_range) => obj.compareBoundaryPoints(obj, how, source_range)"

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
  )
}

///|
extern "js" fn range_delete_contents_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteContents(obj)"

///|
impl TRange with delete_contents(self : Self) -> Unit {
  range_delete_contents_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn range_extract_contents_ffi(obj : JsValue) -> DocumentFragment = "(obj) => obj.extractContents(obj)"

///|
impl TRange with extract_contents(self : Self) -> DocumentFragment {
  range_extract_contents_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn range_clone_contents_ffi(obj : JsValue) -> DocumentFragment = "(obj) => obj.cloneContents(obj)"

///|
impl TRange with clone_contents(self : Self) -> DocumentFragment {
  range_clone_contents_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn range_insert_node_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.insertNode(obj, node)"

///|
impl TRange with insert_node(self : Self, node : &TNode) -> Unit {
  range_insert_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_surround_contents_ffi(
  obj : JsValue,
  new_parent : JsValue,
) -> Unit = "(obj, new_parent) => obj.surroundContents(obj, new_parent)"

///|
impl TRange with surround_contents(self : Self, new_parent : &TNode) -> Unit {
  range_surround_contents_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_parent),
  )
}

///|
extern "js" fn range_clone_range_ffi(obj : JsValue) -> Range = "(obj) => obj.cloneRange(obj)"

///|
impl TRange with clone_range(self : Self) -> Range {
  range_clone_range_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn range_detach_ffi(obj : JsValue) -> Unit = "(obj) => obj.detach(obj)"

///|
impl TRange with detach(self : Self) -> Unit {
  range_detach_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn range_is_point_in_range_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Bool = "(obj, node, offset) => obj.isPointInRange(obj, node, offset)"

///|
impl TRange with is_point_in_range(self : Self, node : &TNode, offset : UInt) -> Bool {
  range_is_point_in_range_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
extern "js" fn range_compare_point_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Int = "(obj, node, offset) => obj.comparePoint(obj, node, offset)"

///|
impl TRange with compare_point(self : Self, node : &TNode, offset : UInt) -> Int {
  range_compare_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
extern "js" fn range_intersects_node_ffi(obj : JsValue, node : JsValue) -> Bool = "(obj, node) => obj.intersectsNode(obj, node)"

///|
impl TRange with intersects_node(self : Self, node : &TNode) -> Bool {
  range_intersects_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn range_create_contextual_fragment_ffi(
  obj : JsValue,
  string : JsValue,
) -> DocumentFragment = "(obj, string) => obj.createContextualFragment(obj, string)"

///|
impl TRange with create_contextual_fragment(
  self : Self,
  string : &TRangeCreateContextualFragmentStringArg,
) -> DocumentFragment {
  range_create_contextual_fragment_ffi(TJsValue::to_js(self), string.to_js())
}

///|
extern "js" fn range_get_client_rects_ffi(obj : JsValue) -> DOMRectList = "(obj) => obj.getClientRects(obj)"

///|
impl TRange with get_client_rects(self : Self) -> DOMRectList {
  range_get_client_rects_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn range_get_bounding_client_rect_ffi(obj : JsValue) -> DOMRect = "(obj) => obj.getBoundingClientRect(obj)"

///|
impl TRange with get_bounding_client_rect(self : Self) -> DOMRect {
  range_get_bounding_client_rect_ffi(TJsValue::to_js(self))
}
