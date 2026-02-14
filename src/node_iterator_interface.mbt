// Do not edit. This file is generated.
// MoonBit type: NodeIterator
// Specifications: dom.idl

///|
/// [NodeIterator](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator)
#external
pub type NodeIterator

///|
pub impl TJsValue for NodeIterator with to_js(self : NodeIterator) -> JsValue = "%identity"

///|
pub impl FromJsAny for NodeIterator with from_js_any(value : JsAny) -> NodeIterator = "%identity"

///|
pub fn[T : TNodeIterator] NodeIterator::into(self : NodeIterator) -> T = "%identity"

///|
pub impl TNodeIterator for NodeIterator

///|
/// [NodeIterator](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator) interface.
pub trait TNodeIterator: TJsValue {
  root(self : Self) -> Node = _
  reference_node(self : Self) -> Node = _
  pointer_before_reference_node(self : Self) -> Bool = _
  what_to_show(self : Self) -> UInt = _
  filter(self : Self) -> NodeFilter = _
  next_node(self : Self) -> Node? = _
  previous_node(self : Self) -> Node? = _
  detach(self : Self) -> Unit = _
}

///|
/// [NodeIterator.root](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/root)
impl TNodeIterator with root(self : Self) -> Node {
  node_iterator_root_ffi(TJsValue::to_js(self))
}

///|
/// [NodeIterator.referenceNode](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/referenceNode)
impl TNodeIterator with reference_node(self : Self) -> Node {
  node_iterator_reference_node_ffi(TJsValue::to_js(self))
}

///|
/// [NodeIterator.pointerBeforeReferenceNode](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/pointerBeforeReferenceNode)
impl TNodeIterator with pointer_before_reference_node(self : Self) -> Bool {
  node_iterator_pointer_before_reference_node_ffi(TJsValue::to_js(self))
}

///|
/// [NodeIterator.whatToShow](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/whatToShow)
impl TNodeIterator with what_to_show(self : Self) -> UInt {
  node_iterator_what_to_show_ffi(TJsValue::to_js(self))
}

///|
/// [NodeIterator.filter](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/filter)
impl TNodeIterator with filter(self : Self) -> NodeFilter {
  node_iterator_filter_ffi(TJsValue::to_js(self))
}

///|
/// [NodeIterator.nextNode](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/nextNode)
impl TNodeIterator with next_node(self : Self) -> Node? {
  let result = node_iterator_next_node_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [NodeIterator.previousNode](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/previousNode)
impl TNodeIterator with previous_node(self : Self) -> Node? {
  let result = node_iterator_previous_node_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [NodeIterator.detach](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator/detach)
impl TNodeIterator with detach(self : Self) -> Unit {
  node_iterator_detach_ffi(TJsValue::to_js(self))
}
