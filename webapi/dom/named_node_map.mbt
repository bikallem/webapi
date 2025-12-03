// Auto-generated MoonBit bindings for NamedNodeMap

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window,
//  LegacyUnenumerableNamedProperties]
// interface NamedNodeMap {
//   readonly attribute unsigned long length;
//   getter Attr? item(unsigned long index);
//   getter Attr? getNamedItem(DOMString qualifiedName);
//   Attr? getNamedItemNS(DOMString? namespace, DOMString localName);
//   [CEReactions] Attr? setNamedItem(Attr attr);
//   [CEReactions] Attr? setNamedItemNS(Attr attr);
//   [CEReactions] Attr removeNamedItem(DOMString qualifiedName);
//   [CEReactions] Attr removeNamedItemNS(DOMString? namespace, DOMString localName);
// };

///|
#external
pub type NamedNodeMap

///|
pub trait TNamedNodeMap: TJsValue {
  length(self : Self) -> Int = _
  item(self : Self, index : Int) -> Attr? = _
  get_named_item(self : Self, qualified_name : String) -> Attr? = _
  get_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr? = _
  set_named_item(self : Self, attr : Attr) -> Attr? = _
  set_named_item_ns(self : Self, attr : Attr) -> Attr? = _
  remove_named_item(self : Self, qualified_name : String) -> Attr = _
  remove_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr = _
}

///|
pub impl TNamedNodeMap for NamedNodeMap

///|
pub impl TJsValue for NamedNodeMap with to_js(self : NamedNodeMap) -> JsValue = "%identity"

///|
pub fn NamedNodeMap::null() -> NamedNodeMap = "JsValue" "null"

///|
pub fn NamedNodeMap::is_null(self : NamedNodeMap) -> Bool = "JsValue" "isNull"

///|
fn named_node_map_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_NamedNodeMap" "item"

///|
impl TNamedNodeMap with item(self : Self, index : Int) -> Attr? {
  named_node_map_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).as_option()
}

///|
fn named_node_map_get_named_item_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "getNamedItem"

///|
impl TNamedNodeMap with get_named_item(self : Self, qualified_name : String) -> Attr? {
  named_node_map_get_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).as_option()
}

///|
fn named_node_map_get_named_item_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "getNamedItemNS"

///|
impl TNamedNodeMap with get_named_item_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr? {
  named_node_map_get_named_item_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).as_option()
}

///|
fn named_node_map_set_named_item_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_NamedNodeMap" "setNamedItem"

///|
impl TNamedNodeMap with set_named_item(self : Self, attr : Attr) -> Attr? {
  named_node_map_set_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  ).as_option()
}

///|
fn named_node_map_set_named_item_ns_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "setNamedItemNS"

///|
impl TNamedNodeMap with set_named_item_ns(self : Self, attr : Attr) -> Attr? {
  named_node_map_set_named_item_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  ).as_option()
}

///|
fn named_node_map_remove_named_item_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "removeNamedItem"

///|
impl TNamedNodeMap with remove_named_item(self : Self, qualified_name : String) -> Attr {
  named_node_map_remove_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).unsafe_cast()
}

///|
fn named_node_map_remove_named_item_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_NamedNodeMap" "removeNamedItemNS"

///|
impl TNamedNodeMap with remove_named_item_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr {
  named_node_map_remove_named_item_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).unsafe_cast()
}

///|
fn named_node_map_length_ffi(obj : JsValue) -> Int = "webapi_NamedNodeMap" "length"

///|
impl TNamedNodeMap with length(self : Self) -> Int {
  named_node_map_length_ffi(self.to_js())
}
