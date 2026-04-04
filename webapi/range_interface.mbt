// Do not edit. This file is generated.
// MoonBit type: Range
// Specifications: html.idl, cssom-view.idl, dom.idl

///|
/// [Range](https://developer.mozilla.org/en-US/docs/Web/API/Range)
#external
pub type Range

///|
pub impl TJsValue for Range with to_js(self : Range) -> JsValue = "%identity"

///|
pub impl FromJsAny for Range with from_js_any(value : JsAny) -> Range = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TRange] Range::into(self : Range) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TRange] Range::unsafe_into(self : Range) -> T = "%identity"

///|
pub impl HasConstructor for Range with constructor_name() {
  "Range"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TRange + HasConstructor] Range::try_into(self : Range) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TRange for Range

///|
pub impl TAbstractRange for Range

///|
pub fn Range::new() -> Range {
  range_new_ffi()
}

///|
pub const RANGE_START_TO_START : UInt = 0

///|
pub const RANGE_START_TO_END : UInt = 1

///|
pub const RANGE_END_TO_END : UInt = 2

///|
pub const RANGE_END_TO_START : UInt = 3

///|
pub(open) trait TRangeCreateContextualFragmentString: TJsValue {}

///|
pub impl TRangeCreateContextualFragmentString for TrustedHTML

///|
pub impl TRangeCreateContextualFragmentString for String

///|
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
  create_contextual_fragment(
    self : Self,
    string : &TRangeCreateContextualFragmentString,
  ) -> DocumentFragment = _
  get_client_rects(self : Self) -> DOMRectList = _
  get_bounding_client_rect(self : Self) -> DOMRect = _
}

///|
/// [Range.commonAncestorContainer](https://developer.mozilla.org/en-US/docs/Web/API/Range/commonAncestorContainer)
impl TRange with common_ancestor_container(self : Self) -> Node {
  range_common_ancestor_container_ffi(TJsValue::to_js(self))
}

///|
/// [Range.setStart](https://developer.mozilla.org/en-US/docs/Web/API/Range/setStart)
impl TRange with set_start(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_start_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
/// [Range.setEnd](https://developer.mozilla.org/en-US/docs/Web/API/Range/setEnd)
impl TRange with set_end(self : Self, node : &TNode, offset : UInt) -> Unit {
  range_set_end_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
/// [Range.setStartBefore](https://developer.mozilla.org/en-US/docs/Web/API/Range/setStartBefore)
impl TRange with set_start_before(self : Self, node : &TNode) -> Unit {
  range_set_start_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.setStartAfter](https://developer.mozilla.org/en-US/docs/Web/API/Range/setStartAfter)
impl TRange with set_start_after(self : Self, node : &TNode) -> Unit {
  range_set_start_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.setEndBefore](https://developer.mozilla.org/en-US/docs/Web/API/Range/setEndBefore)
impl TRange with set_end_before(self : Self, node : &TNode) -> Unit {
  range_set_end_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.setEndAfter](https://developer.mozilla.org/en-US/docs/Web/API/Range/setEndAfter)
impl TRange with set_end_after(self : Self, node : &TNode) -> Unit {
  range_set_end_after_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.collapse](https://developer.mozilla.org/en-US/docs/Web/API/Range/collapse)
impl TRange with collapse(self : Self, to_start? : Bool) -> Unit {
  range_collapse_ffi(TJsValue::to_js(self), opt_to_js(to_start))
}

///|
/// [Range.selectNode](https://developer.mozilla.org/en-US/docs/Web/API/Range/selectNode)
impl TRange with select_node(self : Self, node : &TNode) -> Unit {
  range_select_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.selectNodeContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/selectNodeContents)
impl TRange with select_node_contents(self : Self, node : &TNode) -> Unit {
  range_select_node_contents_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.compareBoundaryPoints](https://developer.mozilla.org/en-US/docs/Web/API/Range/compareBoundaryPoints)
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
/// [Range.deleteContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/deleteContents)
impl TRange with delete_contents(self : Self) -> Unit {
  range_delete_contents_ffi(TJsValue::to_js(self))
}

///|
/// [Range.extractContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/extractContents)
impl TRange with extract_contents(self : Self) -> DocumentFragment {
  range_extract_contents_ffi(TJsValue::to_js(self))
}

///|
/// [Range.cloneContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/cloneContents)
impl TRange with clone_contents(self : Self) -> DocumentFragment {
  range_clone_contents_ffi(TJsValue::to_js(self))
}

///|
/// [Range.insertNode](https://developer.mozilla.org/en-US/docs/Web/API/Range/insertNode)
impl TRange with insert_node(self : Self, node : &TNode) -> Unit {
  range_insert_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.surroundContents](https://developer.mozilla.org/en-US/docs/Web/API/Range/surroundContents)
impl TRange with surround_contents(self : Self, new_parent : &TNode) -> Unit {
  range_surround_contents_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_parent),
  )
}

///|
/// [Range.cloneRange](https://developer.mozilla.org/en-US/docs/Web/API/Range/cloneRange)
impl TRange with clone_range(self : Self) -> Range {
  range_clone_range_ffi(TJsValue::to_js(self))
}

///|
/// [Range.detach](https://developer.mozilla.org/en-US/docs/Web/API/Range/detach)
impl TRange with detach(self : Self) -> Unit {
  range_detach_ffi(TJsValue::to_js(self))
}

///|
/// [Range.isPointInRange](https://developer.mozilla.org/en-US/docs/Web/API/Range/isPointInRange)
impl TRange with is_point_in_range(self : Self, node : &TNode, offset : UInt) -> Bool {
  range_is_point_in_range_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
/// [Range.comparePoint](https://developer.mozilla.org/en-US/docs/Web/API/Range/comparePoint)
impl TRange with compare_point(self : Self, node : &TNode, offset : UInt) -> Int {
  range_compare_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(offset),
  )
}

///|
/// [Range.intersectsNode](https://developer.mozilla.org/en-US/docs/Web/API/Range/intersectsNode)
impl TRange with intersects_node(self : Self, node : &TNode) -> Bool {
  range_intersects_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Range.createContextualFragment](https://developer.mozilla.org/en-US/docs/Web/API/Range/createContextualFragment)
impl TRange with create_contextual_fragment(
  self : Self,
  string : &TRangeCreateContextualFragmentString,
) -> DocumentFragment {
  range_create_contextual_fragment_ffi(TJsValue::to_js(self), string.to_js())
}

///|
/// [Range.getClientRects](https://developer.mozilla.org/en-US/docs/Web/API/Range/getClientRects)
impl TRange with get_client_rects(self : Self) -> DOMRectList {
  range_get_client_rects_ffi(TJsValue::to_js(self))
}

///|
/// [Range.getBoundingClientRect](https://developer.mozilla.org/en-US/docs/Web/API/Range/getBoundingClientRect)
impl TRange with get_bounding_client_rect(self : Self) -> DOMRect {
  range_get_bounding_client_rect_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn range_new_ffi() -> Range = "() => new Range()"

///|
#cfg(target="js")
extern "js" fn range_common_ancestor_container_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.commonAncestorContainer"

///|
#cfg(target="js")
fn range_common_ancestor_container_ffi(obj : JsValue) -> Node {
  range_common_ancestor_container_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_set_start_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Unit = "(obj, node, offset) => obj.setStart(node, offset)"

///|
#cfg(target="js")
extern "js" fn range_set_end_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Unit = "(obj, node, offset) => obj.setEnd(node, offset)"

///|
#cfg(target="js")
extern "js" fn range_set_start_before_ffi(
  obj : JsValue,
  node : JsValue,
) -> Unit = "(obj, node) => obj.setStartBefore(node)"

///|
#cfg(target="js")
extern "js" fn range_set_start_after_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.setStartAfter(node)"

///|
#cfg(target="js")
extern "js" fn range_set_end_before_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.setEndBefore(node)"

///|
#cfg(target="js")
extern "js" fn range_set_end_after_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.setEndAfter(node)"

///|
#cfg(target="js")
extern "js" fn range_collapse_ffi(obj : JsValue, to_start : JsValue) -> Unit = "(obj, to_start) => obj.collapse(to_start)"

///|
#cfg(target="js")
extern "js" fn range_select_node_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.selectNode(node)"

///|
#cfg(target="js")
extern "js" fn range_select_node_contents_ffi(
  obj : JsValue,
  node : JsValue,
) -> Unit = "(obj, node) => obj.selectNodeContents(node)"

///|
#cfg(target="js")
extern "js" fn range_compare_boundary_points_ffi_js(
  obj : JsValue,
  how : JsValue,
  source_range : JsValue,
) -> JsValue = "(obj, how, source_range) => obj.compareBoundaryPoints(how, source_range)"

///|
#cfg(target="js")
fn range_compare_boundary_points_ffi(
  obj : JsValue,
  how : JsValue,
  source_range : JsValue,
) -> Int {
  range_compare_boundary_points_ffi_js(obj, how, source_range).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_delete_contents_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteContents()"

///|
#cfg(target="js")
extern "js" fn range_extract_contents_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.extractContents()"

///|
#cfg(target="js")
fn range_extract_contents_ffi(obj : JsValue) -> DocumentFragment {
  range_extract_contents_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_clone_contents_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cloneContents()"

///|
#cfg(target="js")
fn range_clone_contents_ffi(obj : JsValue) -> DocumentFragment {
  range_clone_contents_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_insert_node_ffi(obj : JsValue, node : JsValue) -> Unit = "(obj, node) => obj.insertNode(node)"

///|
#cfg(target="js")
extern "js" fn range_surround_contents_ffi(
  obj : JsValue,
  new_parent : JsValue,
) -> Unit = "(obj, new_parent) => obj.surroundContents(new_parent)"

///|
#cfg(target="js")
extern "js" fn range_clone_range_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cloneRange()"

///|
#cfg(target="js")
fn range_clone_range_ffi(obj : JsValue) -> Range {
  range_clone_range_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_detach_ffi(obj : JsValue) -> Unit = "(obj) => obj.detach()"

///|
#cfg(target="js")
extern "js" fn range_is_point_in_range_ffi_js(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> JsValue = "(obj, node, offset) => obj.isPointInRange(node, offset)"

///|
#cfg(target="js")
fn range_is_point_in_range_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Bool {
  range_is_point_in_range_ffi_js(obj, node, offset).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_compare_point_ffi_js(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> JsValue = "(obj, node, offset) => obj.comparePoint(node, offset)"

///|
#cfg(target="js")
fn range_compare_point_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Int {
  range_compare_point_ffi_js(obj, node, offset).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_intersects_node_ffi_js(
  obj : JsValue,
  node : JsValue,
) -> JsValue = "(obj, node) => obj.intersectsNode(node)"

///|
#cfg(target="js")
fn range_intersects_node_ffi(obj : JsValue, node : JsValue) -> Bool {
  range_intersects_node_ffi_js(obj, node).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_create_contextual_fragment_ffi_js(
  obj : JsValue,
  string : JsValue,
) -> JsValue = "(obj, string) => obj.createContextualFragment(string)"

///|
#cfg(target="js")
fn range_create_contextual_fragment_ffi(
  obj : JsValue,
  string : JsValue,
) -> DocumentFragment {
  range_create_contextual_fragment_ffi_js(obj, string).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_get_client_rects_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getClientRects()"

///|
#cfg(target="js")
fn range_get_client_rects_ffi(obj : JsValue) -> DOMRectList {
  range_get_client_rects_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn range_get_bounding_client_rect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getBoundingClientRect()"

///|
#cfg(target="js")
fn range_get_bounding_client_rect_ffi(obj : JsValue) -> DOMRect {
  range_get_bounding_client_rect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn range_new_ffi() -> Range = "webapi_Range" "new"

///|
#cfg(target="wasm-gc")
fn range_common_ancestor_container_ffi(obj : JsValue) -> Node = "webapi_Range" "get_commonAncestorContainer"

///|
#cfg(target="wasm-gc")
fn range_set_start_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setStart"

///|
#cfg(target="wasm-gc")
fn range_set_end_ffi(obj : JsValue, node : JsValue, offset : JsValue) -> Unit = "webapi_Range" "setEnd"

///|
#cfg(target="wasm-gc")
fn range_set_start_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartBefore"

///|
#cfg(target="wasm-gc")
fn range_set_start_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setStartAfter"

///|
#cfg(target="wasm-gc")
fn range_set_end_before_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndBefore"

///|
#cfg(target="wasm-gc")
fn range_set_end_after_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "setEndAfter"

///|
#cfg(target="wasm-gc")
fn range_collapse_ffi(obj : JsValue, to_start : JsValue) -> Unit = "webapi_Range" "collapse"

///|
#cfg(target="wasm-gc")
fn range_select_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNode"

///|
#cfg(target="wasm-gc")
fn range_select_node_contents_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "selectNodeContents"

///|
#cfg(target="wasm-gc")
fn range_compare_boundary_points_ffi(
  obj : JsValue,
  how : JsValue,
  source_range : JsValue,
) -> Int = "webapi_Range" "compareBoundaryPoints"

///|
#cfg(target="wasm-gc")
fn range_delete_contents_ffi(obj : JsValue) -> Unit = "webapi_Range" "deleteContents"

///|
#cfg(target="wasm-gc")
fn range_extract_contents_ffi(obj : JsValue) -> DocumentFragment = "webapi_Range" "extractContents"

///|
#cfg(target="wasm-gc")
fn range_clone_contents_ffi(obj : JsValue) -> DocumentFragment = "webapi_Range" "cloneContents"

///|
#cfg(target="wasm-gc")
fn range_insert_node_ffi(obj : JsValue, node : JsValue) -> Unit = "webapi_Range" "insertNode"

///|
#cfg(target="wasm-gc")
fn range_surround_contents_ffi(obj : JsValue, new_parent : JsValue) -> Unit = "webapi_Range" "surroundContents"

///|
#cfg(target="wasm-gc")
fn range_clone_range_ffi(obj : JsValue) -> Range = "webapi_Range" "cloneRange"

///|
#cfg(target="wasm-gc")
fn range_detach_ffi(obj : JsValue) -> Unit = "webapi_Range" "detach"

///|
#cfg(target="wasm-gc")
fn range_is_point_in_range_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Bool = "webapi_Range" "isPointInRange"

///|
#cfg(target="wasm-gc")
fn range_compare_point_ffi(
  obj : JsValue,
  node : JsValue,
  offset : JsValue,
) -> Int = "webapi_Range" "comparePoint"

///|
#cfg(target="wasm-gc")
fn range_intersects_node_ffi(obj : JsValue, node : JsValue) -> Bool = "webapi_Range" "intersectsNode"

///|
#cfg(target="wasm-gc")
fn range_create_contextual_fragment_ffi(
  obj : JsValue,
  string : JsValue,
) -> DocumentFragment = "webapi_Range" "createContextualFragment"

///|
#cfg(target="wasm-gc")
fn range_get_client_rects_ffi(obj : JsValue) -> DOMRectList = "webapi_Range" "getClientRects"

///|
#cfg(target="wasm-gc")
fn range_get_bounding_client_rect_ffi(obj : JsValue) -> DOMRect = "webapi_Range" "getBoundingClientRect"
