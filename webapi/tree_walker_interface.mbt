// Do not edit. This file is generated.
// MoonBit type: TreeWalker
// Specifications: dom.idl

/// [TreeWalker](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker)
#external
pub type TreeWalker

pub impl TJsValue for TreeWalker with to_js(self: TreeWalker) -> JsValue = "%identity"

pub impl FromJsAny for TreeWalker with from_js_any(value : JsAny) -> TreeWalker = "%identity"

pub fn[T: TTreeWalker] TreeWalker::into(self : TreeWalker) -> T = "%identity"

pub impl TTreeWalker for TreeWalker

/// [TreeWalker](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker) interface.
pub trait TTreeWalker: TJsValue {
  root(self : Self) -> Node = _
  what_to_show(self : Self) -> UInt = _
  filter(self : Self) -> NodeFilter = _
  current_node(self : Self) -> Node = _
  set_current_node(self : Self, current_node : &TNode) -> Unit = _
  parent_node_opt(self : Self) -> Node? = _
  first_child_opt(self : Self) -> Node? = _
  last_child_opt(self : Self) -> Node? = _
  previous_sibling_opt(self : Self) -> Node? = _
  next_sibling_opt(self : Self) -> Node? = _
  previous_node_opt(self : Self) -> Node? = _
  next_node_opt(self : Self) -> Node? = _
  parent_node(self : Self) -> Node = _
  first_child(self : Self) -> Node = _
  last_child(self : Self) -> Node = _
  previous_sibling(self : Self) -> Node = _
  next_sibling(self : Self) -> Node = _
  previous_node(self : Self) -> Node = _
  next_node(self : Self) -> Node = _
}

/// [TreeWalker.root](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/root)
impl TTreeWalker with root(self : Self) -> Node {
  tree_walker_root_ffi(TJsValue::to_js(self))
}

/// [TreeWalker.whatToShow](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/whatToShow)
impl TTreeWalker with what_to_show(self : Self) -> UInt {
  tree_walker_what_to_show_ffi(TJsValue::to_js(self))
}

/// [TreeWalker.filter](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/filter)
impl TTreeWalker with filter(self : Self) -> NodeFilter {
  tree_walker_filter_ffi(TJsValue::to_js(self))
}

/// [TreeWalker.currentNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/currentNode)
impl TTreeWalker with current_node(self : Self) -> Node {
  tree_walker_current_node_ffi(TJsValue::to_js(self))
}

/// [TreeWalker.currentNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/currentNode)
impl TTreeWalker with set_current_node(self : Self, 
current_node : &TNode) -> Unit {
  tree_walker_set_current_node_ffi(TJsValue::to_js(self), TJsValue::to_js(current_node))
}

/// [TreeWalker.parentNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/parentNode)
impl TTreeWalker with parent_node_opt(self : Self) -> Node? {
  tree_walker_parent_node_ffi(TJsValue::to_js(self)).to_option()
}

/// [TreeWalker.firstChild](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/firstChild)
impl TTreeWalker with first_child_opt(self : Self) -> Node? {
  tree_walker_first_child_ffi(TJsValue::to_js(self)).to_option()
}

/// [TreeWalker.lastChild](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/lastChild)
impl TTreeWalker with last_child_opt(self : Self) -> Node? {
  tree_walker_last_child_ffi(TJsValue::to_js(self)).to_option()
}

/// [TreeWalker.previousSibling](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/previousSibling)
impl TTreeWalker with previous_sibling_opt(self : Self) -> Node? {
  tree_walker_previous_sibling_ffi(TJsValue::to_js(self)).to_option()
}

/// [TreeWalker.nextSibling](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/nextSibling)
impl TTreeWalker with next_sibling_opt(self : Self) -> Node? {
  tree_walker_next_sibling_ffi(TJsValue::to_js(self)).to_option()
}

/// [TreeWalker.previousNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/previousNode)
impl TTreeWalker with previous_node_opt(self : Self) -> Node? {
  tree_walker_previous_node_ffi(TJsValue::to_js(self)).to_option()
}

/// [TreeWalker.nextNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/nextNode)
impl TTreeWalker with next_node_opt(self : Self) -> Node? {
  tree_walker_next_node_ffi(TJsValue::to_js(self)).to_option()
}

impl TTreeWalker with parent_node(self : Self) -> Node {
  self.parent_node_opt().unwrap()
}

impl TTreeWalker with first_child(self : Self) -> Node {
  self.first_child_opt().unwrap()
}

impl TTreeWalker with last_child(self : Self) -> Node {
  self.last_child_opt().unwrap()
}

impl TTreeWalker with previous_sibling(self : Self) -> Node {
  self.previous_sibling_opt().unwrap()
}

impl TTreeWalker with next_sibling(self : Self) -> Node {
  self.next_sibling_opt().unwrap()
}

impl TTreeWalker with previous_node(self : Self) -> Node {
  self.previous_node_opt().unwrap()
}

impl TTreeWalker with next_node(self : Self) -> Node {
  self.next_node_opt().unwrap()
}