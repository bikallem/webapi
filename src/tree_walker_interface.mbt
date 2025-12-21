///|
#external
pub type TreeWalker

///|
pub impl TJsValue for TreeWalker with to_js(self : TreeWalker) -> JsValue = "%identity"

///|
pub fn[T : TTreeWalker] TreeWalker::into(self : TreeWalker) -> T = "%identity"

///|
pub impl TTreeWalker for TreeWalker

///|
pub trait TTreeWalker: TJsValue {
  parent_node(self : Self) -> Node = _
  first_child(self : Self) -> Node = _
  last_child(self : Self) -> Node = _
  previous_sibling(self : Self) -> Node = _
  next_sibling(self : Self) -> Node = _
  previous_node(self : Self) -> Node = _
  next_node(self : Self) -> Node = _
}

///|
extern "js" fn tree_walker_parent_node_ffi(obj : JsValue) -> Node = "(obj) => obj.parentNode(obj)"

///|
impl TTreeWalker with parent_node(self : Self) -> Node {
  tree_walker_parent_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_first_child_ffi(obj : JsValue) -> Node = "(obj) => obj.firstChild(obj)"

///|
impl TTreeWalker with first_child(self : Self) -> Node {
  tree_walker_first_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_last_child_ffi(obj : JsValue) -> Node = "(obj) => obj.lastChild(obj)"

///|
impl TTreeWalker with last_child(self : Self) -> Node {
  tree_walker_last_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_previous_sibling_ffi(obj : JsValue) -> Node = "(obj) => obj.previousSibling(obj)"

///|
impl TTreeWalker with previous_sibling(self : Self) -> Node {
  tree_walker_previous_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_next_sibling_ffi(obj : JsValue) -> Node = "(obj) => obj.nextSibling(obj)"

///|
impl TTreeWalker with next_sibling(self : Self) -> Node {
  tree_walker_next_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_previous_node_ffi(obj : JsValue) -> Node = "(obj) => obj.previousNode(obj)"

///|
impl TTreeWalker with previous_node(self : Self) -> Node {
  tree_walker_previous_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_next_node_ffi(obj : JsValue) -> Node = "(obj) => obj.nextNode(obj)"

///|
impl TTreeWalker with next_node(self : Self) -> Node {
  tree_walker_next_node_ffi(TJsValue::to_js(self))
}
