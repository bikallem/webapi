// Do not edit. This file is generated.
// MoonBit type: DocumentFragment
// Specifications: dom.idl

///|
#external
pub type DocumentFragment

///|
pub impl TJsValue for DocumentFragment with to_js(self : DocumentFragment) -> JsValue = "%identity"

///|
pub fn[T : TDocumentFragment] DocumentFragment::into(
  self : DocumentFragment,
) -> T = "%identity"

///|
pub impl TDocumentFragment for DocumentFragment

///|
pub impl TNode for DocumentFragment

///|
pub impl TEventTarget for DocumentFragment

///|
extern "js" fn document_fragment_new_ffi() -> DocumentFragment = "() => new DocumentFragment()"

///|
pub fn DocumentFragment::new() -> DocumentFragment {
  document_fragment_new_ffi()
}

///|
pub(open) trait TDocumentFragmentPrependNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentFragmentPrependNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentFragmentPrependNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentFragmentAppendNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentFragmentAppendNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentFragmentAppendNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentFragmentReplaceChildrenNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentFragmentReplaceChildrenNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentFragmentReplaceChildrenNodes for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub trait TDocumentFragment: TNode {
  get_element_by_id(self : Self, element_id : String) -> Element? = _
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element = _
  last_element_child(self : Self) -> Element = _
  child_element_count(self : Self) -> UInt = _
  prepend(self : Self, nodes : &TDocumentFragmentPrependNodes) -> Unit = _
  append(self : Self, nodes : &TDocumentFragmentAppendNodes) -> Unit = _
  replace_children(self : Self, nodes : &TDocumentFragmentReplaceChildrenNodes) -> Unit = _
  move_before(self : Self, node : &TNode, child : &TNode) -> Unit = _
  query_selector(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
}

///|
extern "js" fn document_fragment_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "(obj, element_id) => obj.getElementById(obj, element_id)"

///|
impl TDocumentFragment with get_element_by_id(self : Self, element_id : String) -> Element? {
  let result = document_fragment_get_element_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_id),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn document_fragment_children_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.children"

///|
impl TDocumentFragment with children(self : Self) -> HTMLCollection {
  document_fragment_children_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_fragment_first_element_child_ffi(
  obj : JsValue,
) -> Element = "(obj) => obj.firstElementChild"

///|
impl TDocumentFragment with first_element_child(self : Self) -> Element {
  document_fragment_first_element_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_fragment_last_element_child_ffi(
  obj : JsValue,
) -> Element = "(obj) => obj.lastElementChild"

///|
impl TDocumentFragment with last_element_child(self : Self) -> Element {
  document_fragment_last_element_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_fragment_child_element_count_ffi(obj : JsValue) -> UInt = "(obj) => obj.childElementCount"

///|
impl TDocumentFragment with child_element_count(self : Self) -> UInt {
  document_fragment_child_element_count_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_fragment_prepend_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.prepend(obj, nodes)"

///|
impl TDocumentFragment with prepend(
  self : Self,
  nodes : &TDocumentFragmentPrependNodes,
) -> Unit {
  document_fragment_prepend_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_fragment_append_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.append(obj, nodes)"

///|
impl TDocumentFragment with append(
  self : Self,
  nodes : &TDocumentFragmentAppendNodes,
) -> Unit {
  document_fragment_append_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_fragment_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceChildren(obj, nodes)"

///|
impl TDocumentFragment with replace_children(
  self : Self,
  nodes : &TDocumentFragmentReplaceChildrenNodes,
) -> Unit {
  document_fragment_replace_children_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_fragment_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "(obj, node, child) => obj.moveBefore(obj, node, child)"

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
extern "js" fn document_fragment_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelector(obj, selectors)"

///|
impl TDocumentFragment with query_selector(self : Self, selectors : String) -> Element? {
  let result = document_fragment_query_selector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn document_fragment_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList = "(obj, selectors) => obj.querySelectorAll(obj, selectors)"

///|
impl TDocumentFragment with query_selector_all(self : Self, selectors : String) -> NodeList {
  document_fragment_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}
