///|
#external
pub type NodeIterator

///|
pub impl TJsValue for NodeIterator with to_js(self : NodeIterator) -> JsValue = "%identity"

///|
pub fn[T : TNodeIterator] NodeIterator::into(self : NodeIterator) -> T = "%identity"

///|
pub impl TNodeIterator for NodeIterator

///|
pub trait TNodeIterator: TJsValue {
  root(self : Self) -> Node = _
  reference_node(self : Self) -> Node = _
  pointer_before_reference_node(self : Self) -> Bool = _
  what_to_show(self : Self) -> UInt = _
  filter(self : Self) -> NodeFilter = _
  next_node(self : Self) -> Node = _
  previous_node(self : Self) -> Node = _
  detach(self : Self) -> Unit = _
}

///|
extern "js" fn node_iterator_root_ffi(obj : JsValue) -> Node = "(obj) => obj.root"

///|
impl TNodeIterator with root(self : Self) -> Node {
  node_iterator_root_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_iterator_reference_node_ffi(obj : JsValue) -> Node = "(obj) => obj.referenceNode"

///|
impl TNodeIterator with reference_node(self : Self) -> Node {
  node_iterator_reference_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_iterator_pointer_before_reference_node_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.pointerBeforeReferenceNode"

///|
impl TNodeIterator with pointer_before_reference_node(self : Self) -> Bool {
  node_iterator_pointer_before_reference_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_iterator_what_to_show_ffi(obj : JsValue) -> UInt = "(obj) => obj.whatToShow"

///|
impl TNodeIterator with what_to_show(self : Self) -> UInt {
  node_iterator_what_to_show_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_iterator_filter_ffi(obj : JsValue) -> NodeFilter = "(obj) => obj.filter"

///|
impl TNodeIterator with filter(self : Self) -> NodeFilter {
  node_iterator_filter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_iterator_next_node_ffi(obj : JsValue) -> Node = "(obj) => obj.nextNode(obj)"

///|
impl TNodeIterator with next_node(self : Self) -> Node {
  node_iterator_next_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_iterator_previous_node_ffi(obj : JsValue) -> Node = "(obj) => obj.previousNode(obj)"

///|
impl TNodeIterator with previous_node(self : Self) -> Node {
  node_iterator_previous_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_iterator_detach_ffi(obj : JsValue) -> Unit = "(obj) => obj.detach(obj)"

///|
impl TNodeIterator with detach(self : Self) -> Unit {
  node_iterator_detach_ffi(TJsValue::to_js(self))
}
