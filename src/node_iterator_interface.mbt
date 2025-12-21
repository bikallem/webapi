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
  next_node(self : Self) -> Node = _
  previous_node(self : Self) -> Node = _
  detach(self : Self) -> Unit = _
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
