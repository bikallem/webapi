// Auto-generated MoonBit bindings for Node

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface Node : EventTarget {
//   const unsigned short ELEMENT_NODE = 1;
//   const unsigned short ATTRIBUTE_NODE = 2;
//   const unsigned short TEXT_NODE = 3;
//   const unsigned short CDATA_SECTION_NODE = 4;
//   const unsigned short ENTITY_REFERENCE_NODE = 5; // legacy
//   const unsigned short ENTITY_NODE = 6; // legacy
//   const unsigned short PROCESSING_INSTRUCTION_NODE = 7;
//   const unsigned short COMMENT_NODE = 8;
//   const unsigned short DOCUMENT_NODE = 9;
//   const unsigned short DOCUMENT_TYPE_NODE = 10;
//   const unsigned short DOCUMENT_FRAGMENT_NODE = 11;
//   const unsigned short NOTATION_NODE = 12; // legacy
//   readonly attribute unsigned short nodeType;
//   readonly attribute DOMString nodeName;
// 
//   readonly attribute USVString baseURI;
// 
//   readonly attribute boolean isConnected;
//   readonly attribute Document? ownerDocument;
//   Node getRootNode(optional GetRootNodeOptions options = {});
//   readonly attribute Node? parentNode;
//   readonly attribute Element? parentElement;
//   boolean hasChildNodes();
//   [SameObject] readonly attribute NodeList childNodes;
//   readonly attribute Node? firstChild;
//   readonly attribute Node? lastChild;
//   readonly attribute Node? previousSibling;
//   readonly attribute Node? nextSibling;
// 
//   [CEReactions] attribute DOMString? nodeValue;
//   [CEReactions] attribute DOMString? textContent;
//   [CEReactions] undefined normalize();
// 
//   [CEReactions, NewObject] Node cloneNode(optional boolean subtree = false);
//   boolean isEqualNode(Node? otherNode);
//   boolean isSameNode(Node? otherNode); // legacy alias of ===
// 
//   const unsigned short DOCUMENT_POSITION_DISCONNECTED = 0x01;
//   const unsigned short DOCUMENT_POSITION_PRECEDING = 0x02;
//   const unsigned short DOCUMENT_POSITION_FOLLOWING = 0x04;
//   const unsigned short DOCUMENT_POSITION_CONTAINS = 0x08;
//   const unsigned short DOCUMENT_POSITION_CONTAINED_BY = 0x10;
//   const unsigned short DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
//   unsigned short compareDocumentPosition(Node other);
//   boolean contains(Node? other);
// 
//   DOMString? lookupPrefix(DOMString? namespace);
//   DOMString? lookupNamespaceURI(DOMString? prefix);
//   boolean isDefaultNamespace(DOMString? namespace);
// 
//   [CEReactions] Node insertBefore(Node node, Node? child);
//   [CEReactions] Node appendChild(Node node);
//   [CEReactions] Node replaceChild(Node node, Node child);
//   [CEReactions] Node removeChild(Node child);
// };

///|
#external
pub type Node

///|
pub trait TNode: TJsValue + TEventTarget {
  node_type(self : Self) -> Int = _
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
  is_equal_node(self : Self, other_node : Node) -> Bool = _
  is_same_node(self : Self, other_node : Node) -> Bool = _
  compare_document_position(self : Self, other : Node) -> Int = _
  contains(self : Self, other : Node) -> Bool = _
  lookup_prefix(self : Self, namespace_ : String) -> String? = _
  lookup_namespace_uri(self : Self, prefix : String) -> String? = _
  is_default_namespace(self : Self, namespace_ : String) -> Bool = _
  insert_before(self : Self, node : Node, child : Node) -> Node = _
  append_child(self : Self, node : Node) -> Node = _
  replace_child(self : Self, node : Node, child : Node) -> Node = _
  remove_child(self : Self, child : Node) -> Node = _
}

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
impl TNode with clone_node(self : Self, subtree? : Bool) -> Node {
  let subtree_js = opt_to_js(subtree)
  node_clone_node_ffi(TJsValue::to_js(self), subtree_js).unsafe_cast()
}

///|
fn node_is_equal_node_ffi(obj : JsValue, other_node : JsValue) -> JsValue = "webapi_Node" "isEqualNode"

///|
impl TNode with is_equal_node(self : Self, other_node : Node) -> Bool {
  node_is_equal_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node)).unsafe_cast()
}

///|
fn node_is_same_node_ffi(obj : JsValue, other_node : JsValue) -> JsValue = "webapi_Node" "isSameNode"

///|
impl TNode with is_same_node(self : Self, other_node : Node) -> Bool {
  node_is_same_node_ffi(TJsValue::to_js(self), TJsValue::to_js(other_node)).unsafe_cast()
}

///|
fn node_compare_document_position_ffi(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "webapi_Node" "compareDocumentPosition"

///|
impl TNode with compare_document_position(self : Self, other : Node) -> Int {
  node_compare_document_position_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(other),
  ).unsafe_cast()
}

///|
fn node_contains_ffi(obj : JsValue, other : JsValue) -> JsValue = "webapi_Node" "contains"

///|
impl TNode with contains(self : Self, other : Node) -> Bool {
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
impl TNode with insert_before(self : Self, node : Node, child : Node) -> Node {
  node_insert_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  ).unsafe_cast()
}

///|
fn node_append_child_ffi(obj : JsValue, node : JsValue) -> JsValue = "webapi_Node" "appendChild"

///|
impl TNode with append_child(self : Self, node : Node) -> Node {
  node_append_child_ffi(TJsValue::to_js(self), TJsValue::to_js(node)).unsafe_cast()
}

///|
fn node_replace_child_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "webapi_Node" "replaceChild"

///|
impl TNode with replace_child(self : Self, node : Node, child : Node) -> Node {
  node_replace_child_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  ).unsafe_cast()
}

///|
fn node_remove_child_ffi(obj : JsValue, child : JsValue) -> JsValue = "webapi_Node" "removeChild"

///|
impl TNode with remove_child(self : Self, child : Node) -> Node {
  node_remove_child_ffi(TJsValue::to_js(self), TJsValue::to_js(child)).unsafe_cast()
}

///|
fn node_node_type_ffi(obj : JsValue) -> Int = "webapi_Node" "nodeType"

///|
impl TNode with node_type(self : Self) -> Int {
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
