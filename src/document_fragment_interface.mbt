// Do not edit. This file is generated.
// MoonBit type: DocumentFragment
// Specifications: dom.idl

///|
/// [DocumentFragment](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment)
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
/// [DocumentFragment](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment) interface.
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
/// [DocumentFragment.getElementById](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/getElementById)
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
/// [DocumentFragment.children](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/children)
impl TDocumentFragment with children(self : Self) -> HTMLCollection {
  document_fragment_children_ffi(TJsValue::to_js(self))
}

///|
/// [DocumentFragment.firstElementChild](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/firstElementChild)
impl TDocumentFragment with first_element_child(self : Self) -> Element {
  document_fragment_first_element_child_ffi(TJsValue::to_js(self))
}

///|
/// [DocumentFragment.lastElementChild](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/lastElementChild)
impl TDocumentFragment with last_element_child(self : Self) -> Element {
  document_fragment_last_element_child_ffi(TJsValue::to_js(self))
}

///|
/// [DocumentFragment.childElementCount](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/childElementCount)
impl TDocumentFragment with child_element_count(self : Self) -> UInt {
  document_fragment_child_element_count_ffi(TJsValue::to_js(self))
}

///|
/// [DocumentFragment.prepend](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/prepend)
impl TDocumentFragment with prepend(
  self : Self,
  nodes : &TDocumentFragmentPrependNodes,
) -> Unit {
  document_fragment_prepend_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
/// [DocumentFragment.append](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/append)
impl TDocumentFragment with append(
  self : Self,
  nodes : &TDocumentFragmentAppendNodes,
) -> Unit {
  document_fragment_append_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
/// [DocumentFragment.replaceChildren](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/replaceChildren)
impl TDocumentFragment with replace_children(
  self : Self,
  nodes : &TDocumentFragmentReplaceChildrenNodes,
) -> Unit {
  document_fragment_replace_children_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
/// [DocumentFragment.moveBefore](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/moveBefore)
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
/// [DocumentFragment.querySelector](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/querySelector)
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
/// [DocumentFragment.querySelectorAll](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/querySelectorAll)
impl TDocumentFragment with query_selector_all(self : Self, selectors : String) -> NodeList {
  document_fragment_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}
