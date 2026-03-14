// Do not edit. This file is generated.
// MoonBit type: Node
// Specifications: dom.idl

/// [Node](https://developer.mozilla.org/en-US/docs/Web/API/Node)
#external
pub type Node

pub impl TJsValue for Node with to_js(self: Node) -> JsValue = "%identity"

pub impl FromJsAny for Node with from_js_any(value : JsAny) -> Node = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TNode] Node::into(self : Node) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TNode] Node::unsafe_into(self : Node) -> T = "%identity"

pub impl HasConstructor for Node with constructor_name() { "Node" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNode + HasConstructor] Node::try_into(self : Node) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  node_node_type_ffi(TJsValue::to_js(self))
}

/// [Node.nodeName](https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeName)
impl TNode with node_name(self : Self) -> String {
  node_node_name_ffi(TJsValue::to_js(self))
}

/// [Node.baseURI](https://developer.mozilla.org/en-US/docs/Web/API/Node/baseURI)
impl TNode with base_uri(self : Self) -> String {
  node_base_uri_ffi(TJsValue::to_js(self))
}

/// [Node.isConnected](https://developer.mozilla.org/en-US/docs/Web/API/Node/isConnected)
impl TNode with is_connected(self : Self) -> Bool {
  node_is_connected_ffi(TJsValue::to_js(self))
}

/// [Node.ownerDocument](https://developer.mozilla.org/en-US/docs/Web/API/Node/ownerDocument)
impl TNode with owner_document(self : Self) -> Document {
  node_owner_document_ffi(TJsValue::to_js(self))
}

/// [Node.getRootNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/getRootNode)
impl TNode with get_root_node(self : Self, 
options? : GetRootNodeOptions) -> Node {
  node_get_root_node_ffi(TJsValue::to_js(self), opt_to_js(options))
}

/// [Node.parentNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/parentNode)
impl TNode with parent_node(self : Self) -> Node {
  node_parent_node_ffi(TJsValue::to_js(self))
}

/// [Node.parentElement](https://developer.mozilla.org/en-US/docs/Web/API/Node/parentElement)
impl TNode with parent_element(self : Self) -> Element {
  node_parent_element_ffi(TJsValue::to_js(self))
}

/// [Node.hasChildNodes](https://developer.mozilla.org/en-US/docs/Web/API/Node/hasChildNodes)
impl TNode with has_child_nodes(self : Self) -> Bool {
  node_has_child_nodes_ffi(TJsValue::to_js(self))
}

/// [Node.childNodes](https://developer.mozilla.org/en-US/docs/Web/API/Node/childNodes)
impl TNode with child_nodes(self : Self) -> NodeList {
  node_child_nodes_ffi(TJsValue::to_js(self))
}

/// [Node.firstChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/firstChild)
impl TNode with first_child(self : Self) -> Node {
  node_first_child_ffi(TJsValue::to_js(self))
}

/// [Node.lastChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/lastChild)
impl TNode with last_child(self : Self) -> Node {
  node_last_child_ffi(TJsValue::to_js(self))
}

/// [Node.previousSibling](https://developer.mozilla.org/en-US/docs/Web/API/Node/previousSibling)
impl TNode with previous_sibling(self : Self) -> Node {
  node_previous_sibling_ffi(TJsValue::to_js(self))
}

/// [Node.nextSibling](https://developer.mozilla.org/en-US/docs/Web/API/Node/nextSibling)
impl TNode with next_sibling(self : Self) -> Node {
  node_next_sibling_ffi(TJsValue::to_js(self))
}

/// [Node.nodeValue](https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeValue)
impl TNode with node_value(self : Self) -> String {
  node_node_value_ffi(TJsValue::to_js(self))
}

/// [Node.nodeValue](https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeValue)
impl TNode with set_node_value(self : Self, 
node_value : String) -> Unit {
  node_set_node_value_ffi(TJsValue::to_js(self), TJsValue::to_js(node_value))
}

/// [Node.textContent](https://developer.mozilla.org/en-US/docs/Web/API/Node/textContent)
impl TNode with text_content(self : Self) -> String {
  node_text_content_ffi(TJsValue::to_js(self))
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
subtree? : Bool) -> Node {
  node_clone_node_ffi(TJsValue::to_js(self), opt_to_js(subtree))
}

/// [Node.isEqualNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/isEqualNode)
impl TNode with is_equal_node(self : Self, 
other_node : &TNode) -> Bool {
  node_is_equal_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node))
}

/// [Node.isSameNode](https://developer.mozilla.org/en-US/docs/Web/API/Node/isSameNode)
impl TNode with is_same_node(self : Self, 
other_node : &TNode) -> Bool {
  node_is_same_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node))
}

/// [Node.compareDocumentPosition](https://developer.mozilla.org/en-US/docs/Web/API/Node/compareDocumentPosition)
impl TNode with compare_document_position(self : Self, 
other : &TNode) -> UInt {
  node_compare_document_position_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}

/// [Node.contains](https://developer.mozilla.org/en-US/docs/Web/API/Node/contains)
impl TNode with contains(self : Self, 
other : &TNode) -> Bool {
  node_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}

/// [Node.lookupPrefix](https://developer.mozilla.org/en-US/docs/Web/API/Node/lookupPrefix)
impl TNode with lookup_prefix(self : Self, 
namespace_ : String) -> String? {
  node_lookup_prefix_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_)).to_option_prim()
}

/// [Node.lookupNamespaceURI](https://developer.mozilla.org/en-US/docs/Web/API/Node/lookupNamespaceURI)
impl TNode with lookup_namespace_uri(self : Self, 
prefix : String) -> String? {
  node_lookup_namespace_uri_ffi(TJsValue::to_js(self), TJsValue::to_js(prefix)).to_option_prim()
}

/// [Node.isDefaultNamespace](https://developer.mozilla.org/en-US/docs/Web/API/Node/isDefaultNamespace)
impl TNode with is_default_namespace(self : Self, 
namespace_ : String) -> Bool {
  node_is_default_namespace_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_))
}

/// [Node.insertBefore](https://developer.mozilla.org/en-US/docs/Web/API/Node/insertBefore)
impl TNode with insert_before(self : Self, 
node : &TNode, 
child : &TNode) -> Node {
  node_insert_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(child))
}

/// [Node.appendChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild)
impl TNode with append_child(self : Self, 
node : &TNode) -> Node {
  node_append_child_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

/// [Node.replaceChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/replaceChild)
impl TNode with replace_child(self : Self, 
node : &TNode, 
child : &TNode) -> Node {
  node_replace_child_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(child))
}

/// [Node.removeChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/removeChild)
impl TNode with remove_child(self : Self, 
child : &TNode) -> Node {
  node_remove_child_ffi(TJsValue::to_js(self), TJsValue::to_js(child))
}

#cfg(target="js")
extern "js" fn node_node_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.nodeType"

///|
#cfg(target="js")
fn node_node_type_ffi(obj: JsValue) -> UInt {
  node_node_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_node_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.nodeName"

///|
#cfg(target="js")
fn node_node_name_ffi(obj: JsValue) -> String {
  node_node_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_base_uri_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.baseURI"

///|
#cfg(target="js")
fn node_base_uri_ffi(obj: JsValue) -> String {
  node_base_uri_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_is_connected_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isConnected"

///|
#cfg(target="js")
fn node_is_connected_ffi(obj: JsValue) -> Bool {
  node_is_connected_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_owner_document_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ownerDocument"

///|
#cfg(target="js")
fn node_owner_document_ffi(obj: JsValue) -> Document {
  node_owner_document_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_get_root_node_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getRootNode(options)"

///|
#cfg(target="js")
fn node_get_root_node_ffi(obj: JsValue, options: JsValue) -> Node {
  node_get_root_node_ffi_js(obj, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_parent_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.parentNode"

///|
#cfg(target="js")
fn node_parent_node_ffi(obj: JsValue) -> Node {
  node_parent_node_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_parent_element_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.parentElement"

///|
#cfg(target="js")
fn node_parent_element_ffi(obj: JsValue) -> Element {
  node_parent_element_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_has_child_nodes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hasChildNodes()"

///|
#cfg(target="js")
fn node_has_child_nodes_ffi(obj: JsValue) -> Bool {
  node_has_child_nodes_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_child_nodes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.childNodes"

///|
#cfg(target="js")
fn node_child_nodes_ffi(obj: JsValue) -> NodeList {
  node_child_nodes_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_first_child_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.firstChild"

///|
#cfg(target="js")
fn node_first_child_ffi(obj: JsValue) -> Node {
  node_first_child_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_last_child_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastChild"

///|
#cfg(target="js")
fn node_last_child_ffi(obj: JsValue) -> Node {
  node_last_child_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_previous_sibling_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.previousSibling"

///|
#cfg(target="js")
fn node_previous_sibling_ffi(obj: JsValue) -> Node {
  node_previous_sibling_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_next_sibling_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.nextSibling"

///|
#cfg(target="js")
fn node_next_sibling_ffi(obj: JsValue) -> Node {
  node_next_sibling_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_node_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.nodeValue"

///|
#cfg(target="js")
fn node_node_value_ffi(obj: JsValue) -> String {
  node_node_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_set_node_value_ffi(obj: JsValue, node_value: JsValue) -> Unit = "(obj, nodeValue) => { obj.nodeValue = nodeValue; }"

#cfg(target="js")
extern "js" fn node_text_content_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textContent"

///|
#cfg(target="js")
fn node_text_content_ffi(obj: JsValue) -> String {
  node_text_content_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_set_text_content_ffi(obj: JsValue, text_content: JsValue) -> Unit = "(obj, textContent) => { obj.textContent = textContent; }"

#cfg(target="js")
extern "js" fn node_normalize_ffi(obj: JsValue) -> Unit = "(obj) => obj.normalize()"

#cfg(target="js")
extern "js" fn node_clone_node_ffi_js(obj: JsValue, subtree: JsValue) -> JsValue = "(obj, subtree) => obj.cloneNode(subtree)"

///|
#cfg(target="js")
fn node_clone_node_ffi(obj: JsValue, subtree: JsValue) -> Node {
  node_clone_node_ffi_js(obj, subtree).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_is_equal_node_ffi_js(obj: JsValue, other_node: JsValue) -> JsValue = "(obj, other_node) => obj.isEqualNode(other_node)"

///|
#cfg(target="js")
fn node_is_equal_node_ffi(obj: JsValue, other_node: JsValue) -> Bool {
  node_is_equal_node_ffi_js(obj, other_node).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_is_same_node_ffi_js(obj: JsValue, other_node: JsValue) -> JsValue = "(obj, other_node) => obj.isSameNode(other_node)"

///|
#cfg(target="js")
fn node_is_same_node_ffi(obj: JsValue, other_node: JsValue) -> Bool {
  node_is_same_node_ffi_js(obj, other_node).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_compare_document_position_ffi_js(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.compareDocumentPosition(other)"

///|
#cfg(target="js")
fn node_compare_document_position_ffi(obj: JsValue, other: JsValue) -> UInt {
  node_compare_document_position_ffi_js(obj, other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_contains_ffi_js(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.contains(other)"

///|
#cfg(target="js")
fn node_contains_ffi(obj: JsValue, other: JsValue) -> Bool {
  node_contains_ffi_js(obj, other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_lookup_prefix_ffi(obj: JsValue, namespace_: JsValue) -> JsValue = "(obj, namespace_) => obj.lookupPrefix(namespace_)"

#cfg(target="js")
extern "js" fn node_lookup_namespace_uri_ffi(obj: JsValue, prefix: JsValue) -> JsValue = "(obj, prefix) => obj.lookupNamespaceURI(prefix)"

#cfg(target="js")
extern "js" fn node_is_default_namespace_ffi_js(obj: JsValue, namespace_: JsValue) -> JsValue = "(obj, namespace_) => obj.isDefaultNamespace(namespace_)"

///|
#cfg(target="js")
fn node_is_default_namespace_ffi(obj: JsValue, namespace_: JsValue) -> Bool {
  node_is_default_namespace_ffi_js(obj, namespace_).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_insert_before_ffi_js(obj: JsValue, node: JsValue, child: JsValue) -> JsValue = "(obj, node, child) => obj.insertBefore(node, child)"

///|
#cfg(target="js")
fn node_insert_before_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Node {
  node_insert_before_ffi_js(obj, node, child).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_append_child_ffi_js(obj: JsValue, node: JsValue) -> JsValue = "(obj, node) => obj.appendChild(node)"

///|
#cfg(target="js")
fn node_append_child_ffi(obj: JsValue, node: JsValue) -> Node {
  node_append_child_ffi_js(obj, node).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_replace_child_ffi_js(obj: JsValue, node: JsValue, child: JsValue) -> JsValue = "(obj, node, child) => obj.replaceChild(node, child)"

///|
#cfg(target="js")
fn node_replace_child_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Node {
  node_replace_child_ffi_js(obj, node, child).unsafe_cast()
}

#cfg(target="js")
extern "js" fn node_remove_child_ffi_js(obj: JsValue, child: JsValue) -> JsValue = "(obj, child) => obj.removeChild(child)"

///|
#cfg(target="js")
fn node_remove_child_ffi(obj: JsValue, child: JsValue) -> Node {
  node_remove_child_ffi_js(obj, child).unsafe_cast()
}

#cfg(target="wasm-gc")
fn node_node_type_ffi(obj: JsValue) -> UInt = "webapi_Node" "get_nodeType"

#cfg(target="wasm-gc")
fn node_node_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Node" "get_nodeName"

///|
#cfg(target="wasm-gc")
fn node_node_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(node_node_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn node_base_uri_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Node" "get_baseURI"

///|
#cfg(target="wasm-gc")
fn node_base_uri_ffi(obj: JsValue) -> String {
  jsvalue_to_string(node_base_uri_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn node_is_connected_ffi(obj: JsValue) -> Bool = "webapi_Node" "get_isConnected"

#cfg(target="wasm-gc")
fn node_owner_document_ffi(obj: JsValue) -> Document = "webapi_Node" "get_ownerDocument"

#cfg(target="wasm-gc")
fn node_get_root_node_ffi(obj: JsValue, options: JsValue) -> Node = "webapi_Node" "getRootNode"

#cfg(target="wasm-gc")
fn node_parent_node_ffi(obj: JsValue) -> Node = "webapi_Node" "get_parentNode"

#cfg(target="wasm-gc")
fn node_parent_element_ffi(obj: JsValue) -> Element = "webapi_Node" "get_parentElement"

#cfg(target="wasm-gc")
fn node_has_child_nodes_ffi(obj: JsValue) -> Bool = "webapi_Node" "hasChildNodes"

#cfg(target="wasm-gc")
fn node_child_nodes_ffi(obj: JsValue) -> NodeList = "webapi_Node" "get_childNodes"

#cfg(target="wasm-gc")
fn node_first_child_ffi(obj: JsValue) -> Node = "webapi_Node" "get_firstChild"

#cfg(target="wasm-gc")
fn node_last_child_ffi(obj: JsValue) -> Node = "webapi_Node" "get_lastChild"

#cfg(target="wasm-gc")
fn node_previous_sibling_ffi(obj: JsValue) -> Node = "webapi_Node" "get_previousSibling"

#cfg(target="wasm-gc")
fn node_next_sibling_ffi(obj: JsValue) -> Node = "webapi_Node" "get_nextSibling"

#cfg(target="wasm-gc")
fn node_node_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Node" "get_nodeValue"

///|
#cfg(target="wasm-gc")
fn node_node_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(node_node_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn node_set_node_value_ffi(obj: JsValue, node_value: JsValue) -> Unit = "webapi_Node" "set_nodeValue"

#cfg(target="wasm-gc")
fn node_text_content_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Node" "get_textContent"

///|
#cfg(target="wasm-gc")
fn node_text_content_ffi(obj: JsValue) -> String {
  jsvalue_to_string(node_text_content_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn node_set_text_content_ffi(obj: JsValue, text_content: JsValue) -> Unit = "webapi_Node" "set_textContent"

#cfg(target="wasm-gc")
fn node_normalize_ffi(obj: JsValue) -> Unit = "webapi_Node" "normalize"

#cfg(target="wasm-gc")
fn node_clone_node_ffi(obj: JsValue, subtree: JsValue) -> Node = "webapi_Node" "cloneNode"

#cfg(target="wasm-gc")
fn node_is_equal_node_ffi(obj: JsValue, other_node: JsValue) -> Bool = "webapi_Node" "isEqualNode"

#cfg(target="wasm-gc")
fn node_is_same_node_ffi(obj: JsValue, other_node: JsValue) -> Bool = "webapi_Node" "isSameNode"

#cfg(target="wasm-gc")
fn node_compare_document_position_ffi(obj: JsValue, other: JsValue) -> UInt = "webapi_Node" "compareDocumentPosition"

#cfg(target="wasm-gc")
fn node_contains_ffi(obj: JsValue, other: JsValue) -> Bool = "webapi_Node" "contains"

#cfg(target="wasm-gc")
fn node_lookup_prefix_ffi(obj: JsValue, namespace_: JsValue) -> JsValue = "webapi_Node" "lookupPrefix"

#cfg(target="wasm-gc")
fn node_lookup_namespace_uri_ffi(obj: JsValue, prefix: JsValue) -> JsValue = "webapi_Node" "lookupNamespaceURI"

#cfg(target="wasm-gc")
fn node_is_default_namespace_ffi(obj: JsValue, namespace_: JsValue) -> Bool = "webapi_Node" "isDefaultNamespace"

#cfg(target="wasm-gc")
fn node_insert_before_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Node = "webapi_Node" "insertBefore"

#cfg(target="wasm-gc")
fn node_append_child_ffi(obj: JsValue, node: JsValue) -> Node = "webapi_Node" "appendChild"

#cfg(target="wasm-gc")
fn node_replace_child_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Node = "webapi_Node" "replaceChild"

#cfg(target="wasm-gc")
fn node_remove_child_ffi(obj: JsValue, child: JsValue) -> Node = "webapi_Node" "removeChild"