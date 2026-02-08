// Do not edit. This file is generated.
// MoonBit type: Node
// Specifications: dom.idl

/// [Node](https://developer.mozilla.org/en-US/docs/Web/API/Node)
#external
pub type Node

pub impl TJsValue for Node with to_js(self: Node) -> JsValue = "%identity"

pub fn[T: TNode] Node::into(self : Node) -> T = "%identity"

pub impl TNode for Node

pub impl TEventTarget for Node

pub const NODE_ELEMENT_NODE: UInt = 1

pub const NODE_ATTRIBUTE_NODE: UInt = 2

pub const NODE_TEXT_NODE: UInt = 3

pub const NODE_CDATA_SECTION_NODE: UInt = 4

pub const NODE_ENTITY_REFERENCE_NODE: UInt = 5

pub const NODE_ENTITY_NODE: UInt = 6

pub const NODE_PROCESSING_INSTRUCTION_NODE: UInt = 7

pub const NODE_COMMENT_NODE: UInt = 8

pub const NODE_DOCUMENT_NODE: UInt = 9

pub const NODE_DOCUMENT_TYPE_NODE: UInt = 10

pub const NODE_DOCUMENT_FRAGMENT_NODE: UInt = 11

pub const NODE_NOTATION_NODE: UInt = 12

pub const NODE_DOCUMENT_POSITION_DISCONNECTED: UInt = 0x01

pub const NODE_DOCUMENT_POSITION_PRECEDING: UInt = 0x02

pub const NODE_DOCUMENT_POSITION_FOLLOWING: UInt = 0x04

pub const NODE_DOCUMENT_POSITION_CONTAINS: UInt = 0x08

pub const NODE_DOCUMENT_POSITION_CONTAINED_BY: UInt = 0x10

pub const NODE_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: UInt = 0x20

/// [Node](https://developer.mozilla.org/en-US/docs/Web/API/Node) interface.
pub trait TNode: TEventTarget {
  node_type(self : Self) -> UInt = _
  node_name(self : Self) -> String = _
  base_uri(self : Self) -> String = _
  is_connected(self : Self) -> Bool = _
  owner_document(self : Self) -> Document = _
  get_root_node(self : Self, options? : GetRootNodeOptions) -> Node = _
  parent_node(self : Self) -> Node = _
  parent_element(self : Self) -> Element = _
  has_child_nodes(self : Self) -> Bool = _
  child_nodes(self : Self) -> NodeList = _
  first_child(self : Self) -> Node = _
  last_child(self : Self) -> Node = _
  previous_sibling(self : Self) -> Node = _
  next_sibling(self : Self) -> Node = _
  node_value(self : Self) -> String = _
  set_node_value(self : Self, node_value : String) -> Unit = _
  text_content(self : Self) -> String = _
  set_text_content(self : Self, text_content : String) -> Unit = _
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

/// [Node.nodeType](https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeType)
impl TNode with node_type(self : Self) -> UInt {
  node_node_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.nodeName](https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeName)
impl TNode with node_name(self : Self) -> String {
  node_node_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.baseURI](https://developer.mozilla.org/en-US/docs/Web/API/Node/baseURI)
impl TNode with base_uri(self : Self) -> String {
  node_base_uri_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.isConnected](https://developer.mozilla.org/en-US/docs/Web/API/Node/isConnected)
impl TNode with is_connected(self : Self) -> Bool {
  node_is_connected_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.ownerDocument](https://developer.mozilla.org/en-US/docs/Web/API/Node/ownerDocument)
impl TNode with owner_document(self : Self) -> Document {
  node_owner_document_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.getRootNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/getRootNode)
impl TNode with get_root_node(self : Self, 
options? : GetRootNodeOptions = GetRootNodeOptions::empty()) -> Node {
  node_get_root_node_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

/// [Node.parentNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/parentNode)
impl TNode with parent_node(self : Self) -> Node {
  node_parent_node_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.parentElement](https://developer.mozilla.org/en-US/docs/Web/API/Node/parentElement)
impl TNode with parent_element(self : Self) -> Element {
  node_parent_element_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.hasChildNodes](https://developer.mozilla.org/en-US/docs/Web/API/Node/hasChildNodes)
impl TNode with has_child_nodes(self : Self) -> Bool {
  node_has_child_nodes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.childNodes](https://developer.mozilla.org/en-US/docs/Web/API/Node/childNodes)
impl TNode with child_nodes(self : Self) -> NodeList {
  node_child_nodes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.firstChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/firstChild)
impl TNode with first_child(self : Self) -> Node {
  node_first_child_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.lastChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/lastChild)
impl TNode with last_child(self : Self) -> Node {
  node_last_child_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.previousSibling](https://developer.mozilla.org/en-US/docs/Web/API/Node/previousSibling)
impl TNode with previous_sibling(self : Self) -> Node {
  node_previous_sibling_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.nextSibling](https://developer.mozilla.org/en-US/docs/Web/API/Node/nextSibling)
impl TNode with next_sibling(self : Self) -> Node {
  node_next_sibling_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.nodeValue](https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeValue)
impl TNode with node_value(self : Self) -> String {
  node_node_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.nodeValue](https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeValue)
impl TNode with set_node_value(self : Self, 
node_value : String) -> Unit {
  node_set_node_value_ffi(TJsValue::to_js(self), TJsValue::to_js(node_value))
}

/// [Node.textContent](https://developer.mozilla.org/en-US/docs/Web/API/Node/textContent)
impl TNode with text_content(self : Self) -> String {
  node_text_content_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [Node.textContent](https://developer.mozilla.org/en-US/docs/Web/API/Node/textContent)
impl TNode with set_text_content(self : Self, 
text_content : String) -> Unit {
  node_set_text_content_ffi(TJsValue::to_js(self), TJsValue::to_js(text_content))
}

/// [Node.normalize](https://developer.mozilla.org/en-US/docs/Web/API/Node/normalize)
impl TNode with normalize(self : Self) -> Unit {
  node_normalize_ffi(TJsValue::to_js(self))
}

/// [Node.cloneNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/cloneNode)
impl TNode with clone_node(self : Self, 
subtree? : Bool = false) -> Node {
  node_clone_node_ffi(TJsValue::to_js(self), TJsValue::to_js(subtree)).unsafe_cast()
}

/// [Node.isEqualNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/isEqualNode)
impl TNode with is_equal_node(self : Self, 
other_node : &TNode) -> Bool {
  node_is_equal_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node)).unsafe_cast()
}

/// [Node.isSameNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/isSameNode)
impl TNode with is_same_node(self : Self, 
other_node : &TNode) -> Bool {
  node_is_same_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node)).unsafe_cast()
}

/// [Node.compareDocumentPosition](https://developer.mozilla.org/en-US/docs/Web/API/Node/compareDocumentPosition)
impl TNode with compare_document_position(self : Self, 
other : &TNode) -> UInt {
  node_compare_document_position_ffi(TJsValue::to_js(self), TJsValue::to_js(other)).unsafe_cast()
}

/// [Node.contains](https://developer.mozilla.org/en-US/docs/Web/API/Node/contains)
impl TNode with contains(self : Self, 
other : &TNode) -> Bool {
  node_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(other)).unsafe_cast()
}

/// [Node.lookupPrefix](https://developer.mozilla.org/en-US/docs/Web/API/Node/lookupPrefix)
impl TNode with lookup_prefix(self : Self, 
namespace_ : String) -> String? {
  let result = node_lookup_prefix_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Node.lookupNamespaceURI](https://developer.mozilla.org/en-US/docs/Web/API/Node/lookupNamespaceURI)
impl TNode with lookup_namespace_uri(self : Self, 
prefix : String) -> String? {
  let result = node_lookup_namespace_uri_ffi(TJsValue::to_js(self), TJsValue::to_js(prefix))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Node.isDefaultNamespace](https://developer.mozilla.org/en-US/docs/Web/API/Node/isDefaultNamespace)
impl TNode with is_default_namespace(self : Self, 
namespace_ : String) -> Bool {
  node_is_default_namespace_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_)).unsafe_cast()
}

/// [Node.insertBefore](https://developer.mozilla.org/en-US/docs/Web/API/Node/insertBefore)
impl TNode with insert_before(self : Self, 
node : &TNode, 
child : &TNode) -> Node {
  node_insert_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(child)).unsafe_cast()
}

/// [Node.appendChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild)
impl TNode with append_child(self : Self, 
node : &TNode) -> Node {
  node_append_child_ffi(TJsValue::to_js(self), TJsValue::to_js(node)).unsafe_cast()
}

/// [Node.replaceChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/replaceChild)
impl TNode with replace_child(self : Self, 
node : &TNode, 
child : &TNode) -> Node {
  node_replace_child_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(child)).unsafe_cast()
}

/// [Node.removeChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/removeChild)
impl TNode with remove_child(self : Self, 
child : &TNode) -> Node {
  node_remove_child_ffi(TJsValue::to_js(self), TJsValue::to_js(child)).unsafe_cast()
}