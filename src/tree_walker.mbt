// Auto-generated MoonBit bindings for TreeWalker interface
// Do not edit manually

#external
pub type TreeWalker

pub impl TJsValue for TreeWalker with to_js(self: TreeWalker) -> JsValue = "%identity"


pub fn[T: TTreeWalker] TreeWalker::into(self : TreeWalker) -> T = "%identity"
pub impl TTreeWalker for TreeWalker

pub trait TTreeWalker: TJSValue {
  root(self: Self) -> &TNode = _
  what_to_show(self: Self) -> UInt = _
  filter(self: Self) -> NodeFilter = _
  current_node(self: Self) -> &TNode = _
  set_current_node(self: Self, value : &TNode) -> Unit = _
  parent_node(self: Self) -> &TNode = _
  first_child(self: Self) -> &TNode = _
  last_child(self: Self) -> &TNode = _
  previous_sibling(self: Self) -> &TNode = _
  next_sibling(self: Self) -> &TNode = _
  previous_node(self: Self) -> &TNode = _
  next_node(self: Self) -> &TNode = _
}

///|
fn tree_walker_root_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "root"

///|
impl TTreeWalker with root(self : Self) -> &TNode {
  tree_walker_root_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_what_to_show_ffi(obj : JsValue) -> UInt = "webapi_TreeWalker" "whatToShow"

///|
impl TTreeWalker with what_to_show(self : Self) -> UInt {
  tree_walker_what_to_show_ffi(self.to_js())
}

///|
fn tree_walker_filter_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "filter"

///|
impl TTreeWalker with filter(self : Self) -> NodeFilter {
  tree_walker_filter_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_current_node_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "currentNode"

///|
impl TTreeWalker with current_node(self : Self) -> &TNode {
  tree_walker_current_node_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_set_current_node_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_TreeWalker" "set_currentNode"

///|
impl TTreeWalker with set_current_node(self : Self, value : &TNode) -> Unit {
  tree_walker_set_current_node_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn tree_walker_parent_node_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "parentNode"

///|
impl TTreeWalker with parent_node(self : Self) -> &TNode {
  tree_walker_parent_node_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_first_child_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "firstChild"

///|
impl TTreeWalker with first_child(self : Self) -> &TNode {
  tree_walker_first_child_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_last_child_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "lastChild"

///|
impl TTreeWalker with last_child(self : Self) -> &TNode {
  tree_walker_last_child_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_previous_sibling_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "previousSibling"

///|
impl TTreeWalker with previous_sibling(self : Self) -> &TNode {
  tree_walker_previous_sibling_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_next_sibling_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "nextSibling"

///|
impl TTreeWalker with next_sibling(self : Self) -> &TNode {
  tree_walker_next_sibling_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_previous_node_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "previousNode"

///|
impl TTreeWalker with previous_node(self : Self) -> &TNode {
  tree_walker_previous_node_ffi(self.to_js()).unsafe_cast()
}

///|
fn tree_walker_next_node_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "nextNode"

///|
impl TTreeWalker with next_node(self : Self) -> &TNode {
  tree_walker_next_node_ffi(self.to_js()).unsafe_cast()
}