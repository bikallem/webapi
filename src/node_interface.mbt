///|
#external
pub type Node

///|
pub impl TJsValue for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub fn[T : TNode] Node::into(self : Node) -> T = "%identity"

///|
pub impl TNode for Node

///|
pub impl TEventTarget for Node

///|
pub trait TNode: TEventTarget {
  get_root_node(self : Self, options? : GetRootNodeOptions) -> Node = _
  has_child_nodes(self : Self) -> Bool = _
  normalize(self : Self) -> Unit = _
  clone_node(self : Self, subtree? : Bool) -> Node = _
  is_equal_node(self : Self, other_node : &TNode) -> Bool = _
  is_same_node(self : Self, other_node : &TNode) -> Bool = _
  compare_document_position(self : Self, other : &TNode) -> UInt = _
  contains(self : Self, other : &TNode) -> Bool = _
  lookup_prefix(self : Self, namespace_ : String) -> String = _
  lookup_namespace_uri(self : Self, prefix : String) -> String = _
  is_default_namespace(self : Self, namespace_ : String) -> Bool = _
  insert_before(self : Self, node : &TNode, child : &TNode) -> Node = _
  append_child(self : Self, node : &TNode) -> Node = _
  replace_child(self : Self, node : &TNode, child : &TNode) -> Node = _
  remove_child(self : Self, child : &TNode) -> Node = _
}

///|
extern "js" fn node_get_root_node_ffi(obj : JsValue, options : JsValue) -> Node = "(obj, options) => obj.getRootNode(obj, options)"

///|
impl TNode with get_root_node(
  self : Self,
  options? : GetRootNodeOptions = GetRootNodeOptions::empty(),
) -> Node {
  node_get_root_node_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn node_has_child_nodes_ffi(obj : JsValue) -> Bool = "(obj) => obj.hasChildNodes(obj)"

///|
impl TNode with has_child_nodes(self : Self) -> Bool {
  node_has_child_nodes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_normalize_ffi(obj : JsValue) -> Unit = "(obj) => obj.normalize(obj)"

///|
impl TNode with normalize(self : Self) -> Unit {
  node_normalize_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn node_clone_node_ffi(obj : JsValue, subtree : JsValue) -> Node = "(obj, subtree) => obj.cloneNode(obj, subtree)"

///|
impl TNode with clone_node(self : Self, subtree? : Bool = false) -> Node {
  node_clone_node_ffi(TJsValue::to_js(self), TJsValue::to_js(subtree))
}

///|
extern "js" fn node_is_equal_node_ffi(
  obj : JsValue,
  other_node : JsValue,
) -> Bool = "(obj, other_node) => obj.isEqualNode(obj, other_node)"

///|
impl TNode with is_equal_node(self : Self, other_node : &TNode) -> Bool {
  node_is_equal_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node))
}

///|
extern "js" fn node_is_same_node_ffi(
  obj : JsValue,
  other_node : JsValue,
) -> Bool = "(obj, other_node) => obj.isSameNode(obj, other_node)"

///|
impl TNode with is_same_node(self : Self, other_node : &TNode) -> Bool {
  node_is_same_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node))
}

///|
extern "js" fn node_compare_document_position_ffi(
  obj : JsValue,
  other : JsValue,
) -> UInt = "(obj, other) => obj.compareDocumentPosition(obj, other)"

///|
impl TNode with compare_document_position(self : Self, other : &TNode) -> UInt {
  node_compare_document_position_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(other),
  )
}

///|
extern "js" fn node_contains_ffi(obj : JsValue, other : JsValue) -> Bool = "(obj, other) => obj.contains(obj, other)"

///|
impl TNode with contains(self : Self, other : &TNode) -> Bool {
  node_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}

///|
extern "js" fn node_lookup_prefix_ffi(
  obj : JsValue,
  namespace_ : JsValue,
) -> String = "(obj, namespace_) => obj.lookupPrefix(obj, namespace_)"

///|
impl TNode with lookup_prefix(self : Self, namespace_ : String) -> String {
  node_lookup_prefix_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_))
}

///|
extern "js" fn node_lookup_namespace_uri_ffi(
  obj : JsValue,
  prefix : JsValue,
) -> String = "(obj, prefix) => obj.lookupNamespaceURI(obj, prefix)"

///|
impl TNode with lookup_namespace_uri(self : Self, prefix : String) -> String {
  node_lookup_namespace_uri_ffi(TJsValue::to_js(self), TJsValue::to_js(prefix))
}

///|
extern "js" fn node_is_default_namespace_ffi(
  obj : JsValue,
  namespace_ : JsValue,
) -> Bool = "(obj, namespace_) => obj.isDefaultNamespace(obj, namespace_)"

///|
impl TNode with is_default_namespace(self : Self, namespace_ : String) -> Bool {
  node_is_default_namespace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
  )
}

///|
extern "js" fn node_insert_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Node = "(obj, node, child) => obj.insertBefore(obj, node, child)"

///|
impl TNode with insert_before(self : Self, node : &TNode, child : &TNode) -> Node {
  node_insert_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
extern "js" fn node_append_child_ffi(obj : JsValue, node : JsValue) -> Node = "(obj, node) => obj.appendChild(obj, node)"

///|
impl TNode with append_child(self : Self, node : &TNode) -> Node {
  node_append_child_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn node_replace_child_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Node = "(obj, node, child) => obj.replaceChild(obj, node, child)"

///|
impl TNode with replace_child(self : Self, node : &TNode, child : &TNode) -> Node {
  node_replace_child_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
extern "js" fn node_remove_child_ffi(obj : JsValue, child : JsValue) -> Node = "(obj, child) => obj.removeChild(obj, child)"

///|
impl TNode with remove_child(self : Self, child : &TNode) -> Node {
  node_remove_child_ffi(TJsValue::to_js(self), TJsValue::to_js(child))
}
