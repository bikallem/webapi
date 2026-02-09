///|
extern "js" fn node_node_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nodeType"

///|
fn node_node_type_ffi(obj : JsValue) -> UInt {
  node_node_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_node_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nodeName"

///|
fn node_node_name_ffi(obj : JsValue) -> String {
  node_node_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_base_uri_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.baseURI"

///|
fn node_base_uri_ffi(obj : JsValue) -> String {
  node_base_uri_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_is_connected_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isConnected"

///|
fn node_is_connected_ffi(obj : JsValue) -> Bool {
  node_is_connected_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_owner_document_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ownerDocument"

///|
fn node_owner_document_ffi(obj : JsValue) -> Document {
  node_owner_document_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_get_root_node_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getRootNode(options)"

///|
fn node_get_root_node_ffi(obj : JsValue, options : JsValue) -> Node {
  node_get_root_node_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn node_parent_node_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parentNode"

///|
fn node_parent_node_ffi(obj : JsValue) -> Node {
  node_parent_node_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_parent_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parentElement"

///|
fn node_parent_element_ffi(obj : JsValue) -> Element {
  node_parent_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_has_child_nodes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hasChildNodes()"

///|
fn node_has_child_nodes_ffi(obj : JsValue) -> Bool {
  node_has_child_nodes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_child_nodes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.childNodes"

///|
fn node_child_nodes_ffi(obj : JsValue) -> NodeList {
  node_child_nodes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_first_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.firstChild"

///|
fn node_first_child_ffi(obj : JsValue) -> Node {
  node_first_child_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_last_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastChild"

///|
fn node_last_child_ffi(obj : JsValue) -> Node {
  node_last_child_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_previous_sibling_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.previousSibling"

///|
fn node_previous_sibling_ffi(obj : JsValue) -> Node {
  node_previous_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_next_sibling_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nextSibling"

///|
fn node_next_sibling_ffi(obj : JsValue) -> Node {
  node_next_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_node_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nodeValue"

///|
fn node_node_value_ffi(obj : JsValue) -> String {
  node_node_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_set_node_value_ffi(
  obj : JsValue,
  node_value : JsValue,
) -> Unit = "(obj, nodeValue) => { obj.nodeValue = nodeValue; }"

///|
extern "js" fn node_text_content_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.textContent"

///|
fn node_text_content_ffi(obj : JsValue) -> String {
  node_text_content_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn node_set_text_content_ffi(
  obj : JsValue,
  text_content : JsValue,
) -> Unit = "(obj, textContent) => { obj.textContent = textContent; }"

///|
extern "js" fn node_normalize_ffi(obj : JsValue) -> Unit = "(obj) => obj.normalize()"

///|
extern "js" fn node_clone_node_ffi_js(
  obj : JsValue,
  subtree : JsValue,
) -> JsValue = "(obj, subtree) => obj.cloneNode(subtree)"

///|
fn node_clone_node_ffi(obj : JsValue, subtree : JsValue) -> Node {
  node_clone_node_ffi_js(obj, subtree).unsafe_cast()
}

///|
extern "js" fn node_is_equal_node_ffi_js(
  obj : JsValue,
  other_node : JsValue,
) -> JsValue = "(obj, other_node) => obj.isEqualNode(other_node)"

///|
fn node_is_equal_node_ffi(obj : JsValue, other_node : JsValue) -> Bool {
  node_is_equal_node_ffi_js(obj, other_node).unsafe_cast()
}

///|
extern "js" fn node_is_same_node_ffi_js(
  obj : JsValue,
  other_node : JsValue,
) -> JsValue = "(obj, other_node) => obj.isSameNode(other_node)"

///|
fn node_is_same_node_ffi(obj : JsValue, other_node : JsValue) -> Bool {
  node_is_same_node_ffi_js(obj, other_node).unsafe_cast()
}

///|
extern "js" fn node_compare_document_position_ffi_js(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.compareDocumentPosition(other)"

///|
fn node_compare_document_position_ffi(obj : JsValue, other : JsValue) -> UInt {
  node_compare_document_position_ffi_js(obj, other).unsafe_cast()
}

///|
extern "js" fn node_contains_ffi_js(obj : JsValue, other : JsValue) -> JsValue = "(obj, other) => obj.contains(other)"

///|
fn node_contains_ffi(obj : JsValue, other : JsValue) -> Bool {
  node_contains_ffi_js(obj, other).unsafe_cast()
}

///|
extern "js" fn node_lookup_prefix_ffi(
  obj : JsValue,
  namespace_ : JsValue,
) -> JsValue = "(obj, namespace_) => obj.lookupPrefix(namespace_)"

///|
extern "js" fn node_lookup_namespace_uri_ffi(
  obj : JsValue,
  prefix : JsValue,
) -> JsValue = "(obj, prefix) => obj.lookupNamespaceURI(prefix)"

///|
extern "js" fn node_is_default_namespace_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
) -> JsValue = "(obj, namespace_) => obj.isDefaultNamespace(namespace_)"

///|
fn node_is_default_namespace_ffi(obj : JsValue, namespace_ : JsValue) -> Bool {
  node_is_default_namespace_ffi_js(obj, namespace_).unsafe_cast()
}

///|
extern "js" fn node_insert_before_ffi_js(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "(obj, node, child) => obj.insertBefore(node, child)"

///|
fn node_insert_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Node {
  node_insert_before_ffi_js(obj, node, child).unsafe_cast()
}

///|
extern "js" fn node_append_child_ffi_js(
  obj : JsValue,
  node : JsValue,
) -> JsValue = "(obj, node) => obj.appendChild(node)"

///|
fn node_append_child_ffi(obj : JsValue, node : JsValue) -> Node {
  node_append_child_ffi_js(obj, node).unsafe_cast()
}

///|
extern "js" fn node_replace_child_ffi_js(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "(obj, node, child) => obj.replaceChild(node, child)"

///|
fn node_replace_child_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Node {
  node_replace_child_ffi_js(obj, node, child).unsafe_cast()
}

///|
extern "js" fn node_remove_child_ffi_js(
  obj : JsValue,
  child : JsValue,
) -> JsValue = "(obj, child) => obj.removeChild(child)"

///|
fn node_remove_child_ffi(obj : JsValue, child : JsValue) -> Node {
  node_remove_child_ffi_js(obj, child).unsafe_cast()
}
