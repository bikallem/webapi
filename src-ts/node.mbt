// Auto-generated MoonBit bindings for Node

// Do not edit manually

///|
#external
pub type Node

///|
pub const ELEMENT_NODE : UInt = 1

///|
pub const ATTRIBUTE_NODE : UInt = 2

///|
pub const TEXT_NODE : UInt = 3

///|
pub const CDATA_SECTION_NODE : UInt = 4

///|
pub const ENTITY_REFERENCE_NODE : UInt = 5

///|
pub const ENTITY_NODE : UInt = 6

///|
pub const PROCESSING_INSTRUCTION_NODE : UInt = 7

///|
pub const COMMENT_NODE : UInt = 8

///|
pub const DOCUMENT_NODE : UInt = 9

///|
pub const DOCUMENT_TYPE_NODE : UInt = 10

///|
pub const DOCUMENT_FRAGMENT_NODE : UInt = 11

///|
pub const NOTATION_NODE : UInt = 12

///|
pub const DOCUMENT_POSITION_DISCONNECTED : UInt = 0x01

///|
pub const DOCUMENT_POSITION_PRECEDING : UInt = 0x02

///|
pub const DOCUMENT_POSITION_FOLLOWING : UInt = 0x04

///|
pub const DOCUMENT_POSITION_CONTAINS : UInt = 0x08

///|
pub const DOCUMENT_POSITION_CONTAINED_BY : UInt = 0x10

///|
pub const DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : UInt = 0x20

///|
pub trait TNode: TJsValue + TEventTarget {
  node_type(self : Self) -> UInt = _
  node_name(self : Self) -> String = _
  base_uri(self : Self) -> String = _
  is_connected(self : Self) -> Bool = _
  owner_document(self : Self) -> Document? = _
  parent_node(self : Self) -> Node? = _
  parent_element(self : Self) -> Element? = _
  child_nodes(self : Self) -> NodeList = _
  first_child(self : Self) -> Node? = _
  last_child(self : Self) -> Node? = _
  previous_sibling(self : Self) -> Node? = _
  next_sibling(self : Self) -> Node? = _
  node_value(self : Self) -> String? = _
  set_node_value(self : Self, value : String) -> Unit = _
  text_content(self : Self) -> String? = _
  set_text_content(self : Self, value : String) -> Unit = _
  get_root_node(self : Self, options? : GetRootNodeOptions) -> Node = _
  has_child_nodes(self : Self) -> Bool = _
  normalize(self : Self) -> Unit = _
  clone_node(self : Self, subtree? : Bool) -> Node = _
  is_equal_node(self : Self, other_node : &TNode) -> Bool = _
  is_same_node(self : Self, other_node : &TNode) -> Bool = _
  compare_document_position(self : Self, other : &TNode) -> UInt = _
  contains(self : Self, other : &TNode) -> Bool = _
  lookup_prefix(self : Self, namespace_ : String) -> String? = _
  lookup_namespace_uri(self : Self, prefix : String) -> String? = _
  is_default_namespace(self : Self, namespace_ : String) -> Bool = _
  insert_before(self : Self, node : &TNode, child : &TNode) -> Node = _
  append_child(self : Self, node : &TNode) -> Node = _
  replace_child(self : Self, node : &TNode, child : &TNode) -> Node = _
  remove_child(self : Self, child : &TNode) -> Node = _
}

///|
pub fn[T : TNode] Node::into(self : Node) -> T = "%identity"

///|
pub impl TEventTarget for Node

///|
pub impl TNode for Node

///|
pub impl TJsValue for Node with to_js(self : Node) -> JsValue = "%identity"

///|
fn node_get_root_node_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Node" "getRootNode"

///|
impl TNode with get_root_node(
  self : Self,
  options? : GetRootNodeOptions = GetRootNodeOptions::empty(),
) -> Node {
  node_get_root_node_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn node_has_child_nodes_ffi(obj : JsValue) -> JsValue = "webapi_Node" "hasChildNodes"

///|
impl TNode with has_child_nodes(self : Self) -> Bool {
  node_has_child_nodes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn node_normalize_ffi(obj : JsValue) -> Unit = "webapi_Node" "normalize"

///|
impl TNode with normalize(self : Self) -> Unit {
  node_normalize_ffi(TJsValue::to_js(self))
}

///|
fn node_clone_node_ffi(obj : JsValue, subtree : JsValue) -> JsValue = "webapi_Node" "cloneNode"

///|
impl TNode with clone_node(self : Self, subtree? : Bool = false) -> Node {
  node_clone_node_ffi(TJsValue::to_js(self), TJsValue::to_js(subtree)).unsafe_cast()
}

///|
fn node_is_equal_node_ffi(obj : JsValue, other_node : JsValue) -> JsValue = "webapi_Node" "isEqualNode"

///|
impl TNode with is_equal_node(self : Self, other_node : &TNode) -> Bool {
  node_is_equal_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node)).unsafe_cast()
}

///|
fn node_is_same_node_ffi(obj : JsValue, other_node : JsValue) -> JsValue = "webapi_Node" "isSameNode"

///|
impl TNode with is_same_node(self : Self, other_node : &TNode) -> Bool {
  node_is_same_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node)).unsafe_cast()
}

///|
fn node_compare_document_position_ffi(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "webapi_Node" "compareDocumentPosition"

///|
impl TNode with compare_document_position(self : Self, other : &TNode) -> UInt {
  node_compare_document_position_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(other),
  ).unsafe_cast()
}

///|
fn node_contains_ffi(obj : JsValue, other : JsValue) -> JsValue = "webapi_Node" "contains"

///|
impl TNode with contains(self : Self, other : &TNode) -> Bool {
  node_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(other)).unsafe_cast()
}

///|
fn node_lookup_prefix_ffi(obj : JsValue, namespace_ : JsValue) -> JsValue = "webapi_Node" "lookupPrefix"

///|
impl TNode with lookup_prefix(self : Self, namespace_ : String) -> String? {
  node_lookup_prefix_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_)).as_option()
}

///|
fn node_lookup_namespace_uri_ffi(obj : JsValue, prefix : JsValue) -> JsValue = "webapi_Node" "lookupNamespaceURI"

///|
impl TNode with lookup_namespace_uri(self : Self, prefix : String) -> String? {
  node_lookup_namespace_uri_ffi(TJsValue::to_js(self), TJsValue::to_js(prefix)).as_option()
}

///|
fn node_is_default_namespace_ffi(
  obj : JsValue,
  namespace_ : JsValue,
) -> JsValue = "webapi_Node" "isDefaultNamespace"

///|
impl TNode with is_default_namespace(self : Self, namespace_ : String) -> Bool {
  node_is_default_namespace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
  ).unsafe_cast()
}

///|
fn node_insert_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "webapi_Node" "insertBefore"

///|
impl TNode with insert_before(self : Self, node : &TNode, child : &TNode) -> Node {
  node_insert_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  ).unsafe_cast()
}

///|
fn node_append_child_ffi(obj : JsValue, node : JsValue) -> JsValue = "webapi_Node" "appendChild"

///|
impl TNode with append_child(self : Self, node : &TNode) -> Node {
  node_append_child_ffi(TJsValue::to_js(self), TJsValue::to_js(node)).unsafe_cast()
}

///|
fn node_replace_child_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "webapi_Node" "replaceChild"

///|
impl TNode with replace_child(self : Self, node : &TNode, child : &TNode) -> Node {
  node_replace_child_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  ).unsafe_cast()
}

///|
fn node_remove_child_ffi(obj : JsValue, child : JsValue) -> JsValue = "webapi_Node" "removeChild"

///|
impl TNode with remove_child(self : Self, child : &TNode) -> Node {
  node_remove_child_ffi(TJsValue::to_js(self), TJsValue::to_js(child)).unsafe_cast()
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
impl TNode with owner_document(self : Self) -> Document? {
  node_owner_document_ffi(self.to_js()).as_option()
}

///|
fn node_parent_node_ffi(obj : JsValue) -> JsValue = "webapi_Node" "parentNode"

///|
impl TNode with parent_node(self : Self) -> Node? {
  node_parent_node_ffi(self.to_js()).as_option()
}

///|
fn node_parent_element_ffi(obj : JsValue) -> JsValue = "webapi_Node" "parentElement"

///|
impl TNode with parent_element(self : Self) -> Element? {
  node_parent_element_ffi(self.to_js()).as_option()
}

///|
fn node_child_nodes_ffi(obj : JsValue) -> JsValue = "webapi_Node" "childNodes"

///|
impl TNode with child_nodes(self : Self) -> NodeList {
  node_child_nodes_ffi(self.to_js()).unsafe_cast()
}

///|
fn node_first_child_ffi(obj : JsValue) -> JsValue = "webapi_Node" "firstChild"

///|
impl TNode with first_child(self : Self) -> Node? {
  node_first_child_ffi(self.to_js()).as_option()
}

///|
fn node_last_child_ffi(obj : JsValue) -> JsValue = "webapi_Node" "lastChild"

///|
impl TNode with last_child(self : Self) -> Node? {
  node_last_child_ffi(self.to_js()).as_option()
}

///|
fn node_previous_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Node" "previousSibling"

///|
impl TNode with previous_sibling(self : Self) -> Node? {
  node_previous_sibling_ffi(self.to_js()).as_option()
}

///|
fn node_next_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Node" "nextSibling"

///|
impl TNode with next_sibling(self : Self) -> Node? {
  node_next_sibling_ffi(self.to_js()).as_option()
}

///|
fn node_node_value_ffi(obj : JsValue) -> JsValue = "webapi_Node" "nodeValue"

///|
impl TNode with node_value(self : Self) -> String? {
  node_node_value_ffi(self.to_js()).as_option()
}

///|
fn node_set_node_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_Node" "set_nodeValue"

///|
impl TNode with set_node_value(self : Self, value : String) -> Unit {
  node_set_node_value_ffi(self.to_js(), value)
}

///|
fn node_text_content_ffi(obj : JsValue) -> JsValue = "webapi_Node" "textContent"

///|
impl TNode with text_content(self : Self) -> String? {
  node_text_content_ffi(self.to_js()).as_option()
}

///|
fn node_set_text_content_ffi(obj : JsValue, value : String) -> Unit = "webapi_Node" "set_textContent"

///|
impl TNode with set_text_content(self : Self, value : String) -> Unit {
  node_set_text_content_ffi(self.to_js(), value)
}
