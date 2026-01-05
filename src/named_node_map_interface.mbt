// Do not edit. This file is generated.
// MoonBit type: NamedNodeMap
// Specifications: dom.idl

///|
#external
pub type NamedNodeMap

///|
pub impl TJsValue for NamedNodeMap with to_js(self : NamedNodeMap) -> JsValue = "%identity"

///|
pub fn[T : TNamedNodeMap] NamedNodeMap::into(self : NamedNodeMap) -> T = "%identity"

///|
pub impl TNamedNodeMap for NamedNodeMap

///|
pub trait TNamedNodeMap: TJsValue {
  length(self : Self) -> UInt = _
  get_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr? = _
  set_named_item(self : Self, attr : &TAttr) -> Attr? = _
  set_named_item_ns(self : Self, attr : &TAttr) -> Attr? = _
  remove_named_item(self : Self, qualified_name : String) -> Attr = _
  remove_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr = _
}

///|
extern "js" fn named_node_map_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TNamedNodeMap with length(self : Self) -> UInt {
  named_node_map_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn named_node_map_get_named_item_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getNamedItemNS(obj, namespace_, local_name)"

///|
impl TNamedNodeMap with get_named_item_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr? {
  let result = named_node_map_get_named_item_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn named_node_map_set_named_item_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setNamedItem(obj, attr)"

///|
impl TNamedNodeMap with set_named_item(self : Self, attr : &TAttr) -> Attr? {
  let result = named_node_map_set_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn named_node_map_set_named_item_ns_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setNamedItemNS(obj, attr)"

///|
impl TNamedNodeMap with set_named_item_ns(self : Self, attr : &TAttr) -> Attr? {
  let result = named_node_map_set_named_item_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn named_node_map_remove_named_item_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> Attr = "(obj, qualified_name) => obj.removeNamedItem(obj, qualified_name)"

///|
impl TNamedNodeMap with remove_named_item(self : Self, qualified_name : String) -> Attr {
  named_node_map_remove_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
extern "js" fn named_node_map_remove_named_item_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> Attr = "(obj, namespace_, local_name) => obj.removeNamedItemNS(obj, namespace_, local_name)"

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
  )
}
