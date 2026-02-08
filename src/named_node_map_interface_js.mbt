extern "js" fn named_node_map_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"

extern "js" fn named_node_map_get_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.getNamedItemNS(namespace_, local_name)"

extern "js" fn named_node_map_set_named_item_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setNamedItem(attr)"

extern "js" fn named_node_map_set_named_item_ns_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setNamedItemNS(attr)"

extern "js" fn named_node_map_remove_named_item_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.removeNamedItem(qualified_name)"

extern "js" fn named_node_map_remove_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.removeNamedItemNS(namespace_, local_name)"