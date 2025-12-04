// Auto-generated MoonBit bindings for DocumentFragment

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface DocumentFragment : Node {
//   constructor();
// };
// 
// interface mixin NonElementParentNode {
//   Element? getElementById(DOMString elementId);
// };
// 
// interface mixin ParentNode {
//   [SameObject] readonly attribute HTMLCollection children;
//   readonly attribute Element? firstElementChild;
//   readonly attribute Element? lastElementChild;
//   readonly attribute unsigned long childElementCount;
// 
//   [CEReactions, Unscopable] undefined prepend((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined append((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined replaceChildren((Node or DOMString)... nodes);
// 
//   [CEReactions] undefined moveBefore(Node node, Node? child);
// 
//   Element? querySelector(DOMString selectors);
//   [NewObject] NodeList querySelectorAll(DOMString selectors);
// };

///|
#external
pub type DocumentFragment

///|
pub trait TDocumentFragment: TJsValue + TNode {
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> &TElement? = _
  last_element_child(self : Self) -> &TElement? = _
  child_element_count(self : Self) -> UInt = _
  get_element_by_id(self : Self, element_id : String) -> &TElement? = _
  prepend(self : Self, nodes : &TPrependNodesArg) -> Unit = _
  append(self : Self, nodes : &TAppendNodesArg) -> Unit = _
  replace_children(self : Self, nodes : &TReplaceChildrenNodesArg) -> Unit = _
  move_before(self : Self, node : &TNode, child : &TNode) -> Unit = _
  query_selector(self : Self, selectors : String) -> &TElement? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
}

///|
pub impl TEventTarget for DocumentFragment

///|
pub impl TNode for DocumentFragment

///|
pub impl TDocumentFragment for DocumentFragment

///|
pub impl TJsValue for DocumentFragment with to_js(self : DocumentFragment) -> JsValue = "%identity"

///|
pub fn DocumentFragment::null() -> DocumentFragment {
  JsValue::null()
}

///|
pub fn DocumentFragment::new() -> DocumentFragment = "webapi_DocumentFragment" "new"

///|
fn document_fragment_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "webapi_DocumentFragment" "getElementById"

///|
impl TDocumentFragment with get_element_by_id(self : Self, element_id : String) -> &TElement? {
  document_fragment_get_element_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_id),
  ).as_option()
}

///|
fn document_fragment_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentFragment" "prepend"

///|
impl TDocumentFragment with prepend(self : Self, nodes : &TPrependNodesArg) -> Unit {
  document_fragment_prepend_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn document_fragment_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentFragment" "append"

///|
impl TDocumentFragment with append(self : Self, nodes : &TAppendNodesArg) -> Unit {
  document_fragment_append_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn document_fragment_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "webapi_DocumentFragment" "replaceChildren"

///|
impl TDocumentFragment with replace_children(
  self : Self,
  nodes : &TReplaceChildrenNodesArg,
) -> Unit {
  document_fragment_replace_children_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn document_fragment_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "webapi_DocumentFragment" "moveBefore"

///|
impl TDocumentFragment with move_before(
  self : Self,
  node : &TNode,
  child : &TNode,
) -> Unit {
  document_fragment_move_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
fn document_fragment_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "webapi_DocumentFragment" "querySelector"

///|
impl TDocumentFragment with query_selector(self : Self, selectors : String) -> &TElement? {
  document_fragment_query_selector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  ).as_option()
}

///|
fn document_fragment_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "webapi_DocumentFragment" "querySelectorAll"

///|
impl TDocumentFragment with query_selector_all(self : Self, selectors : String) -> NodeList {
  document_fragment_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  ).unsafe_cast()
}

///|
fn document_fragment_children_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "children"

///|
impl TDocumentFragment with children(self : Self) -> HTMLCollection {
  document_fragment_children_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_fragment_first_element_child_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "firstElementChild"

///|
impl TDocumentFragment with first_element_child(self : Self) -> &TElement? {
  document_fragment_first_element_child_ffi(self.to_js()).as_option()
}

///|
fn document_fragment_last_element_child_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "lastElementChild"

///|
impl TDocumentFragment with last_element_child(self : Self) -> &TElement? {
  document_fragment_last_element_child_ffi(self.to_js()).as_option()
}

///|
fn document_fragment_child_element_count_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "childElementCount"

///|
impl TDocumentFragment with child_element_count(self : Self) -> UInt {
  document_fragment_child_element_count_ffi(self.to_js()).unsafe_cast()
}
