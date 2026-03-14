// Do not edit. This file is generated.
// MoonBit type: TreeWalker
// Specifications: dom.idl

///|
/// [TreeWalker](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker)
#external
pub type TreeWalker

///|
pub impl TJsValue for TreeWalker with to_js(self : TreeWalker) -> JsValue = "%identity"

///|
pub impl FromJsAny for TreeWalker with from_js_any(value : JsAny) -> TreeWalker = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTreeWalker] TreeWalker::into(self : TreeWalker) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTreeWalker] TreeWalker::unsafe_into(self : TreeWalker) -> T = "%identity"

///|
pub impl HasConstructor for TreeWalker with constructor_name() {
  "TreeWalker"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTreeWalker + HasConstructor] TreeWalker::try_into(
  self : TreeWalker,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TTreeWalker for TreeWalker

///|
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

///|
/// [TreeWalker.root](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/root)
impl TTreeWalker with root(self : Self) -> Node {
  tree_walker_root_ffi(TJsValue::to_js(self))
}

///|
/// [TreeWalker.whatToShow](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/whatToShow)
impl TTreeWalker with what_to_show(self : Self) -> UInt {
  tree_walker_what_to_show_ffi(TJsValue::to_js(self))
}

///|
/// [TreeWalker.filter](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/filter)
impl TTreeWalker with filter(self : Self) -> NodeFilter {
  tree_walker_filter_ffi(TJsValue::to_js(self))
}

///|
/// [TreeWalker.currentNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/currentNode)
impl TTreeWalker with current_node(self : Self) -> Node {
  tree_walker_current_node_ffi(TJsValue::to_js(self))
}

///|
/// [TreeWalker.currentNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/currentNode)
impl TTreeWalker with set_current_node(self : Self, current_node : &TNode) -> Unit {
  tree_walker_set_current_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(current_node),
  )
}

///|
/// [TreeWalker.parentNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/parentNode)
impl TTreeWalker with parent_node_opt(self : Self) -> Node? {
  tree_walker_parent_node_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [TreeWalker.firstChild](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/firstChild)
impl TTreeWalker with first_child_opt(self : Self) -> Node? {
  tree_walker_first_child_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [TreeWalker.lastChild](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/lastChild)
impl TTreeWalker with last_child_opt(self : Self) -> Node? {
  tree_walker_last_child_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [TreeWalker.previousSibling](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/previousSibling)
impl TTreeWalker with previous_sibling_opt(self : Self) -> Node? {
  tree_walker_previous_sibling_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [TreeWalker.nextSibling](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/nextSibling)
impl TTreeWalker with next_sibling_opt(self : Self) -> Node? {
  tree_walker_next_sibling_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [TreeWalker.previousNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/previousNode)
impl TTreeWalker with previous_node_opt(self : Self) -> Node? {
  tree_walker_previous_node_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [TreeWalker.nextNode](https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker/nextNode)
impl TTreeWalker with next_node_opt(self : Self) -> Node? {
  tree_walker_next_node_ffi(TJsValue::to_js(self)).to_option()
}

///|
impl TTreeWalker with parent_node(self : Self) -> Node {
  self.parent_node_opt().unwrap()
}

///|
impl TTreeWalker with first_child(self : Self) -> Node {
  self.first_child_opt().unwrap()
}

///|
impl TTreeWalker with last_child(self : Self) -> Node {
  self.last_child_opt().unwrap()
}

///|
impl TTreeWalker with previous_sibling(self : Self) -> Node {
  self.previous_sibling_opt().unwrap()
}

///|
impl TTreeWalker with next_sibling(self : Self) -> Node {
  self.next_sibling_opt().unwrap()
}

///|
impl TTreeWalker with previous_node(self : Self) -> Node {
  self.previous_node_opt().unwrap()
}

///|
impl TTreeWalker with next_node(self : Self) -> Node {
  self.next_node_opt().unwrap()
}

///|
#cfg(target="js")
extern "js" fn tree_walker_root_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.root"

///|
#cfg(target="js")
fn tree_walker_root_ffi(obj : JsValue) -> Node {
  tree_walker_root_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn tree_walker_what_to_show_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.whatToShow"

///|
#cfg(target="js")
fn tree_walker_what_to_show_ffi(obj : JsValue) -> UInt {
  tree_walker_what_to_show_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn tree_walker_filter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.filter"

///|
#cfg(target="js")
fn tree_walker_filter_ffi(obj : JsValue) -> NodeFilter {
  tree_walker_filter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn tree_walker_current_node_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentNode"

///|
#cfg(target="js")
fn tree_walker_current_node_ffi(obj : JsValue) -> Node {
  tree_walker_current_node_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn tree_walker_set_current_node_ffi(
  obj : JsValue,
  current_node : JsValue,
) -> Unit = "(obj, currentNode) => { obj.currentNode = currentNode; }"

///|
#cfg(target="js")
extern "js" fn tree_walker_parent_node_ffi(obj : JsValue) -> JsValue = "(obj) => obj.parentNode()"

///|
#cfg(target="js")
extern "js" fn tree_walker_first_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.firstChild()"

///|
#cfg(target="js")
extern "js" fn tree_walker_last_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lastChild()"

///|
#cfg(target="js")
extern "js" fn tree_walker_previous_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.previousSibling()"

///|
#cfg(target="js")
extern "js" fn tree_walker_next_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nextSibling()"

///|
#cfg(target="js")
extern "js" fn tree_walker_previous_node_ffi(obj : JsValue) -> JsValue = "(obj) => obj.previousNode()"

///|
#cfg(target="js")
extern "js" fn tree_walker_next_node_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nextNode()"

///|
#cfg(target="wasm-gc")
fn tree_walker_root_ffi(obj : JsValue) -> Node = "webapi_TreeWalker" "get_root"

///|
#cfg(target="wasm-gc")
fn tree_walker_what_to_show_ffi(obj : JsValue) -> UInt = "webapi_TreeWalker" "get_whatToShow"

///|
#cfg(target="wasm-gc")
fn tree_walker_filter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TreeWalker" "get_filter"

///|
#cfg(target="wasm-gc")
fn tree_walker_filter_ffi(obj : JsValue) -> NodeFilter {
  tree_walker_filter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn tree_walker_current_node_ffi(obj : JsValue) -> Node = "webapi_TreeWalker" "get_currentNode"

///|
#cfg(target="wasm-gc")
fn tree_walker_set_current_node_ffi(
  obj : JsValue,
  current_node : JsValue,
) -> Unit = "webapi_TreeWalker" "set_currentNode"

///|
#cfg(target="wasm-gc")
fn tree_walker_parent_node_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "parentNode"

///|
#cfg(target="wasm-gc")
fn tree_walker_first_child_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "firstChild"

///|
#cfg(target="wasm-gc")
fn tree_walker_last_child_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "lastChild"

///|
#cfg(target="wasm-gc")
fn tree_walker_previous_sibling_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "previousSibling"

///|
#cfg(target="wasm-gc")
fn tree_walker_next_sibling_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "nextSibling"

///|
#cfg(target="wasm-gc")
fn tree_walker_previous_node_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "previousNode"

///|
#cfg(target="wasm-gc")
fn tree_walker_next_node_ffi(obj : JsValue) -> JsValue = "webapi_TreeWalker" "nextNode"
