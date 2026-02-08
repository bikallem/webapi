///|
extern "js" fn node_node_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nodeType"

///|
extern "js" fn node_node_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nodeName"

///|
extern "js" fn node_base_uri_ffi(obj : JsValue) -> JsValue = "(obj) => obj.baseURI"

///|
extern "js" fn node_is_connected_ffi(obj : JsValue) -> JsValue = "(obj) => obj.isConnected"

///|
extern "js" fn node_owner_document_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ownerDocument"

///|
extern "js" fn node_get_root_node_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getRootNode(options)"

///|
extern "js" fn node_parent_node_ffi(obj : JsValue) -> JsValue = "(obj) => obj.parentNode"

///|
extern "js" fn node_parent_element_ffi(obj : JsValue) -> JsValue = "(obj) => obj.parentElement"

///|
extern "js" fn node_has_child_nodes_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hasChildNodes()"

///|
extern "js" fn node_child_nodes_ffi(obj : JsValue) -> JsValue = "(obj) => obj.childNodes"

///|
extern "js" fn node_first_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.firstChild"

///|
extern "js" fn node_last_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lastChild"

///|
extern "js" fn node_previous_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.previousSibling"

///|
extern "js" fn node_next_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nextSibling"

///|
extern "js" fn node_node_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nodeValue"

///|
extern "js" fn node_set_node_value_ffi(
  obj : JsValue,
  node_value : JsValue,
) -> Unit = "(obj, nodeValue) => { obj.nodeValue = nodeValue; }"

///|
extern "js" fn node_text_content_ffi(obj : JsValue) -> JsValue = "(obj) => obj.textContent"

///|
extern "js" fn node_set_text_content_ffi(
  obj : JsValue,
  text_content : JsValue,
) -> Unit = "(obj, textContent) => { obj.textContent = textContent; }"

///|
extern "js" fn node_normalize_ffi(obj : JsValue) -> Unit = "(obj) => obj.normalize()"

///|
extern "js" fn node_clone_node_ffi(obj : JsValue, subtree : JsValue) -> JsValue = "(obj, subtree) => obj.cloneNode(subtree)"

///|
extern "js" fn node_is_equal_node_ffi(
  obj : JsValue,
  other_node : JsValue,
) -> JsValue = "(obj, other_node) => obj.isEqualNode(other_node)"

///|
extern "js" fn node_is_same_node_ffi(
  obj : JsValue,
  other_node : JsValue,
) -> JsValue = "(obj, other_node) => obj.isSameNode(other_node)"

///|
extern "js" fn node_compare_document_position_ffi(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.compareDocumentPosition(other)"

///|
extern "js" fn node_contains_ffi(obj : JsValue, other : JsValue) -> JsValue = "(obj, other) => obj.contains(other)"

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
extern "js" fn node_is_default_namespace_ffi(
  obj : JsValue,
  namespace_ : JsValue,
) -> JsValue = "(obj, namespace_) => obj.isDefaultNamespace(namespace_)"

///|
extern "js" fn node_insert_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "(obj, node, child) => obj.insertBefore(node, child)"

///|
extern "js" fn node_append_child_ffi(obj : JsValue, node : JsValue) -> JsValue = "(obj, node) => obj.appendChild(node)"

///|
extern "js" fn node_replace_child_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "(obj, node, child) => obj.replaceChild(node, child)"

///|
extern "js" fn node_remove_child_ffi(obj : JsValue, child : JsValue) -> JsValue = "(obj, child) => obj.removeChild(child)"
