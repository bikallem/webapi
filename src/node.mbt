// Auto-generated MoonBit bindings for Node interface
// Do not edit manually

#external
pub type Node

pub impl TJsValue for Node with to_js(self: Node) -> JsValue = "%identity"


pub fn[T: TNode] Node::into(self : Node) -> T = "%identity"
pub impl TNode for Node

pub trait TNode: TJsValue + TTEventTarget {
  node_type(self: Self) -> UInt = _
  node_name(self: Self) -> String = _
  base_uri(self: Self) -> String = _
  is_connected(self: Self) -> Bool = _
  owner_document(self: Self) -> &TDocument = _
  get_root_node(self: Self, options? : GetRootNodeOptions) -> &TNode = _
  parent_node(self: Self) -> &TNode = _
  parent_element(self: Self) -> &TElement = _
  has_child_nodes(self: Self) -> Bool = _
  child_nodes(self: Self) -> &TNodeList = _
  first_child(self: Self) -> &TNode = _
  last_child(self: Self) -> &TNode = _
  previous_sibling(self: Self) -> &TNode = _
  next_sibling(self: Self) -> &TNode = _
  node_value(self: Self) -> String = _
  set_node_value(self: Self, value : String) -> Unit = _
  text_content(self: Self) -> String = _
  set_text_content(self: Self, value : String) -> Unit = _
  normalize(self: Self) -> Unit = _
  clone_node(self: Self, subtree? : Bool) -> &TNode = _
  is_equal_node(self: Self, other_node : &TNode) -> Bool = _
  is_same_node(self: Self, other_node : &TNode) -> Bool = _
  compare_document_position(self: Self, other : &TNode) -> UInt = _
  contains(self: Self, other : &TNode) -> Bool = _
  lookup_prefix(self: Self, namespace : String) -> String = _
  lookup_namespace_uri(self: Self, prefix : String) -> String = _
  is_default_namespace(self: Self, namespace : String) -> Bool = _
  insert_before(self: Self, node : &TNode, child : &TNode) -> &TNode = _
  append_child(self: Self, node : &TNode) -> &TNode = _
  replace_child(self: Self, node : &TNode, child : &TNode) -> &TNode = _
  remove_child(self: Self, child : &TNode) -> &TNode = _
}

///|
fn node_node_type_ffi(obj : JsValue) -> UInt = "webapi_Node" "nodeType"

///|
impl TNode with node_type(self : Self) -> UInt {
  node_node_type_ffi(self.to_js())
}

///|
fn node_node_name_ffi(obj : JsValue) -> String = "webapi_Node" "nodeName"

///|
impl TNode with node_name(self : Self) -> String {
  node_node_name_ffi(self.to_js())
}

///|
fn node_base_uri_ffi(obj : JsValue) -> String = "webapi_Node" "baseURI"

///|
impl TNode with base_uri(self : Self) -> String {
  node_base_uri_ffi(self.to_js())
}

///|
fn node_is_connected_ffi(obj : JsValue) -> Bool = "webapi_Node" "isConnected"

///|
impl TNode with is_connected(self : Self) -> Bool {
  node_is_connected_ffi(self.to_js())
}

///|
fn node_owner_document_ffi(obj : JsValue) -> JsValue = "webapi_Node" "ownerDocument"

///|
impl TNode with owner_document(self : Self) -> &TDocument {
  node_owner_document_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_parent_node_ffi(obj : JsValue) -> JsValue = "webapi_Node" "parentNode"

///|
impl TNode with parent_node(self : Self) -> &TNode {
  node_parent_node_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_parent_element_ffi(obj : JsValue) -> JsValue = "webapi_Node" "parentElement"

///|
impl TNode with parent_element(self : Self) -> &TElement {
  node_parent_element_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_child_nodes_ffi(obj : JsValue) -> JsValue = "webapi_Node" "childNodes"

///|
impl TNode with child_nodes(self : Self) -> &TNodeList {
  node_child_nodes_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_first_child_ffi(obj : JsValue) -> JsValue = "webapi_Node" "firstChild"

///|
impl TNode with first_child(self : Self) -> &TNode {
  node_first_child_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_last_child_ffi(obj : JsValue) -> JsValue = "webapi_Node" "lastChild"

///|
impl TNode with last_child(self : Self) -> &TNode {
  node_last_child_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_previous_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Node" "previousSibling"

///|
impl TNode with previous_sibling(self : Self) -> &TNode {
  node_previous_sibling_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_next_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Node" "nextSibling"

///|
impl TNode with next_sibling(self : Self) -> &TNode {
  node_next_sibling_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_node_value_ffi(obj : JsValue) -> String = "webapi_Node" "nodeValue"

///|
impl TNode with node_value(self : Self) -> String {
  node_node_value_ffi(self.to_js())
}

///|
fn node_set_node_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_Node" "set_nodeValue"

///|
impl TNode with set_node_value(self : Self, value : String) -> Unit {
  node_set_node_value_ffi(self.to_js(), value)
}

///|
fn node_text_content_ffi(obj : JsValue) -> String = "webapi_Node" "textContent"

///|
impl TNode with text_content(self : Self) -> String {
  node_text_content_ffi(self.to_js())
}

///|
fn node_set_text_content_ffi(obj : JsValue, value : String) -> Unit = "webapi_Node" "set_textContent"

///|
impl TNode with set_text_content(self : Self, value : String) -> Unit {
  node_set_text_content_ffi(self.to_js(), value)
}

///|
fn node_get_root_node_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Node" "getRootNode"

///|
impl TNode with get_root_node(self : Self, options? : GetRootNodeOptions) -> &TNode {
  node_get_root_node_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn node_has_child_nodes_ffi(obj : JsValue) -> Bool = "webapi_Node" "hasChildNodes"

///|
impl TNode with has_child_nodes(self : Self) -> Bool {
  node_has_child_nodes_ffi(self.to_js())
}

///|
fn node_normalize_ffi(obj : JsValue) -> Unit = "webapi_Node" "normalize"

///|
impl TNode with normalize(self : Self) -> Unit {
  node_normalize_ffi(self.to_js())
}

///|
fn node_clone_node_ffi(obj : JsValue, subtree : JsValue) -> JsValue = "webapi_Node" "cloneNode"

///|
impl TNode with clone_node(self : Self, subtree? : Bool) -> &TNode {
  node_clone_node_ffi(self.to_js(), TJsValue::to_js(subtree)).unsafe_cast()
}

///|
fn node_is_equal_node_ffi(obj : JsValue, other_node : JsValue) -> Bool = "webapi_Node" "isEqualNode"

///|
impl TNode with is_equal_node(self : Self, other_node : &TNode) -> Bool {
  node_is_equal_node_ffi(self.to_js(), other_node.to_js())
}

///|
fn node_is_same_node_ffi(obj : JsValue, other_node : JsValue) -> Bool = "webapi_Node" "isSameNode"

///|
impl TNode with is_same_node(self : Self, other_node : &TNode) -> Bool {
  node_is_same_node_ffi(self.to_js(), other_node.to_js())
}

///|
fn node_compare_document_position_ffi(obj : JsValue, other : JsValue) -> UInt = "webapi_Node" "compareDocumentPosition"

///|
impl TNode with compare_document_position(self : Self, other : &TNode) -> UInt {
  node_compare_document_position_ffi(self.to_js(), other.to_js())
}

///|
fn node_contains_ffi(obj : JsValue, other : JsValue) -> Bool = "webapi_Node" "contains"

///|
impl TNode with contains(self : Self, other : &TNode) -> Bool {
  node_contains_ffi(self.to_js(), other.to_js())
}

///|
fn node_lookup_prefix_ffi(obj : JsValue, namespace : JsValue) -> String = "webapi_Node" "lookupPrefix"

///|
impl TNode with lookup_prefix(self : Self, namespace : String) -> String {
  node_lookup_prefix_ffi(self.to_js(), TJsValue::to_js(namespace))
}

///|
fn node_lookup_namespace_uri_ffi(obj : JsValue, prefix : JsValue) -> String = "webapi_Node" "lookupNamespaceURI"

///|
impl TNode with lookup_namespace_uri(self : Self, prefix : String) -> String {
  node_lookup_namespace_uri_ffi(self.to_js(), TJsValue::to_js(prefix))
}

///|
fn node_is_default_namespace_ffi(obj : JsValue, namespace : JsValue) -> Bool = "webapi_Node" "isDefaultNamespace"

///|
impl TNode with is_default_namespace(self : Self, namespace : String) -> Bool {
  node_is_default_namespace_ffi(self.to_js(), TJsValue::to_js(namespace))
}

///|
fn node_insert_before_ffi(obj : JsValue, node : JsValue, child : JsValue) -> JsValue = "webapi_Node" "insertBefore"

///|
impl TNode with insert_before(self : Self, node : &TNode, child : &TNode) -> &TNode {
  node_insert_before_ffi(self.to_js(), node.to_js(), child.to_js()).unsafe_cast()
}

///|
fn node_append_child_ffi(obj : JsValue, node : JsValue) -> JsValue = "webapi_Node" "appendChild"

///|
impl TNode with append_child(self : Self, node : &TNode) -> &TNode {
  node_append_child_ffi(self.to_js(), node.to_js()).unsafe_cast()
}

///|
fn node_replace_child_ffi(obj : JsValue, node : JsValue, child : JsValue) -> JsValue = "webapi_Node" "replaceChild"

///|
impl TNode with replace_child(self : Self, node : &TNode, child : &TNode) -> &TNode {
  node_replace_child_ffi(self.to_js(), node.to_js(), child.to_js()).unsafe_cast()
}

///|
fn node_remove_child_ffi(obj : JsValue, child : JsValue) -> JsValue = "webapi_Node" "removeChild"

///|
impl TNode with remove_child(self : Self, child : &TNode) -> &TNode {
  node_remove_child_ffi(self.to_js(), child.to_js()).unsafe_cast()
}