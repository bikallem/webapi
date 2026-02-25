///|
fn named_node_map_length_ffi(obj : JsValue) -> UInt = "webapi_NamedNodeMap" "get_length"

///|
fn named_node_map_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_NamedNodeMap" "item"

///|
fn named_node_map_get_named_item_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "getNamedItem"

///|
fn named_node_map_get_named_item_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "getNamedItemNS"

///|
fn named_node_map_set_named_item_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_NamedNodeMap" "setNamedItem"

///|
fn named_node_map_set_named_item_ns_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "setNamedItemNS"

///|
fn named_node_map_remove_named_item_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> Attr = "webapi_NamedNodeMap" "removeNamedItem"

///|
fn named_node_map_remove_named_item_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> Attr = "webapi_NamedNodeMap" "removeNamedItemNS"
