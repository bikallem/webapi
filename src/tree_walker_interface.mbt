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
  parent_node(self : Self) -> JsValue = _
  first_child(self : Self) -> JsValue = _
  last_child(self : Self) -> JsValue = _
  previous_sibling(self : Self) -> JsValue = _
  next_sibling(self : Self) -> JsValue = _
  previous_node(self : Self) -> JsValue = _
  next_node(self : Self) -> JsValue = _
}

///|
extern "js" fn tree_walker_parent_node_ffi(obj : JsValue) -> JsValue = "(obj) => obj.parentNode(obj)"

///|
impl TTreeWalker with parent_node(self : Self) -> JsValue {
  tree_walker_parent_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_first_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.firstChild(obj)"

///|
impl TTreeWalker with first_child(self : Self) -> JsValue {
  tree_walker_first_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_last_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lastChild(obj)"

///|
impl TTreeWalker with last_child(self : Self) -> JsValue {
  tree_walker_last_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_previous_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.previousSibling(obj)"

///|
impl TTreeWalker with previous_sibling(self : Self) -> JsValue {
  tree_walker_previous_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_next_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nextSibling(obj)"

///|
impl TTreeWalker with next_sibling(self : Self) -> JsValue {
  tree_walker_next_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_previous_node_ffi(obj : JsValue) -> JsValue = "(obj) => obj.previousNode(obj)"

///|
impl TTreeWalker with previous_node(self : Self) -> JsValue {
  tree_walker_previous_node_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn tree_walker_next_node_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nextNode(obj)"

///|
impl TTreeWalker with next_node(self : Self) -> JsValue {
  tree_walker_next_node_ffi(TJsValue::to_js(self))
}
