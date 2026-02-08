///|
fn node_node_type_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_nodeType"

///|
fn node_node_name_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_nodeName"

///|
fn node_base_uri_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_baseURI"

///|
fn node_is_connected_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_isConnected"

///|
fn node_owner_document_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_ownerDocument"

///|
fn node_get_root_node_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Node" "getRootNode"

///|
fn node_parent_node_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_parentNode"

///|
fn node_parent_element_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_parentElement"

///|
fn node_has_child_nodes_ffi(obj : JsValue) -> JsValue = "webapi_Node" "hasChildNodes"

///|
fn node_child_nodes_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_childNodes"

///|
fn node_first_child_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_firstChild"

///|
fn node_last_child_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_lastChild"

///|
fn node_previous_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_previousSibling"

///|
fn node_next_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_nextSibling"

///|
fn node_node_value_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_nodeValue"

///|
fn node_set_node_value_ffi(obj : JsValue, node_value : JsValue) -> Unit = "webapi_Node" "set_nodeValue"

///|
fn node_text_content_ffi(obj : JsValue) -> JsValue = "webapi_Node" "get_textContent"

///|
fn node_set_text_content_ffi(obj : JsValue, text_content : JsValue) -> Unit = "webapi_Node" "set_textContent"

///|
fn node_normalize_ffi(obj : JsValue) -> Unit = "webapi_Node" "normalize"

///|
fn node_clone_node_ffi(obj : JsValue, subtree : JsValue) -> JsValue = "webapi_Node" "cloneNode"

///|
fn node_is_equal_node_ffi(obj : JsValue, other_node : JsValue) -> JsValue = "webapi_Node" "isEqualNode"

///|
fn node_is_same_node_ffi(obj : JsValue, other_node : JsValue) -> JsValue = "webapi_Node" "isSameNode"

///|
fn node_compare_document_position_ffi(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "webapi_Node" "compareDocumentPosition"

///|
fn node_contains_ffi(obj : JsValue, other : JsValue) -> JsValue = "webapi_Node" "contains"

///|
fn node_lookup_prefix_ffi(obj : JsValue, namespace_ : JsValue) -> JsValue = "webapi_Node" "lookupPrefix"

///|
fn node_lookup_namespace_uri_ffi(obj : JsValue, prefix : JsValue) -> JsValue = "webapi_Node" "lookupNamespaceURI"

///|
fn node_is_default_namespace_ffi(
  obj : JsValue,
  namespace_ : JsValue,
) -> JsValue = "webapi_Node" "isDefaultNamespace"

///|
fn node_insert_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "webapi_Node" "insertBefore"

///|
fn node_append_child_ffi(obj : JsValue, node : JsValue) -> JsValue = "webapi_Node" "appendChild"

///|
fn node_replace_child_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> JsValue = "webapi_Node" "replaceChild"

///|
fn node_remove_child_ffi(obj : JsValue, child : JsValue) -> JsValue = "webapi_Node" "removeChild"
