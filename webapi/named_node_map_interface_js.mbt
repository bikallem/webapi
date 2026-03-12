extern "js" fn named_node_map_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn named_node_map_length_ffi(obj: JsValue) -> UInt {
  named_node_map_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn named_node_map_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

extern "js" fn named_node_map_get_named_item_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.getNamedItem(qualified_name)"

extern "js" fn named_node_map_get_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.getNamedItemNS(namespace_, local_name)"

extern "js" fn named_node_map_set_named_item_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setNamedItem(attr)"

extern "js" fn named_node_map_set_named_item_ns_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setNamedItemNS(attr)"

extern "js" fn named_node_map_remove_named_item_ffi_js(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.removeNamedItem(qualified_name)"

///|
fn named_node_map_remove_named_item_ffi(obj: JsValue, qualified_name: JsValue) -> Attr {
  named_node_map_remove_named_item_ffi_js(obj, qualified_name).unsafe_cast()
}

extern "js" fn named_node_map_remove_named_item_ns_ffi_js(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.removeNamedItemNS(namespace_, local_name)"

///|
fn named_node_map_remove_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> Attr {
  named_node_map_remove_named_item_ns_ffi_js(obj, namespace_, local_name).unsafe_cast()
}