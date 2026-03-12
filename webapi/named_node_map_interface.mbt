// Do not edit. This file is generated.
// MoonBit type: NamedNodeMap
// Specifications: dom.idl

///|
/// [NamedNodeMap](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap)
#external
pub type NamedNodeMap

///|
pub impl TJsValue for NamedNodeMap with to_js(self : NamedNodeMap) -> JsValue = "%identity"

///|
pub impl FromJsAny for NamedNodeMap with from_js_any(value : JsAny) -> NamedNodeMap = "%identity"

///|
pub fn[T : TNamedNodeMap] NamedNodeMap::into(self : NamedNodeMap) -> T = "%identity"

///|
pub impl TNamedNodeMap for NamedNodeMap

///|
/// [NamedNodeMap](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap) interface.
pub trait TNamedNodeMap: TJsValue {
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> Attr? = _
  get_named_item_opt(self : Self, qualified_name : String) -> Attr? = _
  get_named_item_ns_opt(self : Self, namespace_ : String, local_name : String) -> Attr? = _
  set_named_item_opt(self : Self, attr : &TAttr) -> Attr? = _
  set_named_item_ns_opt(self : Self, attr : &TAttr) -> Attr? = _
  remove_named_item(self : Self, qualified_name : String) -> Attr = _
  remove_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr = _
  item(self : Self, index : UInt) -> Attr = _
  get_named_item(self : Self, qualified_name : String) -> Attr = _
  get_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr = _
  set_named_item(self : Self, attr : &TAttr) -> Attr = _
  set_named_item_ns(self : Self, attr : &TAttr) -> Attr = _
}

///|
/// [NamedNodeMap.length](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/length)
impl TNamedNodeMap with length(self : Self) -> UInt {
  named_node_map_length_ffi(TJsValue::to_js(self))
}

///|
/// [NamedNodeMap.item](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/item)
impl TNamedNodeMap with item_opt(self : Self, index : UInt) -> Attr? {
  named_node_map_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [NamedNodeMap.getNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/getNamedItem)
impl TNamedNodeMap with get_named_item_opt(self : Self, qualified_name : String) -> Attr? {
  named_node_map_get_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).to_option()
}

///|
/// [NamedNodeMap.getNamedItemNS](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/getNamedItemNS)
impl TNamedNodeMap with get_named_item_ns_opt(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr? {
  named_node_map_get_named_item_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).to_option()
}

///|
/// [NamedNodeMap.setNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/setNamedItem)
impl TNamedNodeMap with set_named_item_opt(self : Self, attr : &TAttr) -> Attr? {
  named_node_map_set_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  ).to_option()
}

///|
/// [NamedNodeMap.setNamedItemNS](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/setNamedItemNS)
impl TNamedNodeMap with set_named_item_ns_opt(self : Self, attr : &TAttr) -> Attr? {
  named_node_map_set_named_item_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  ).to_option()
}

///|
/// [NamedNodeMap.removeNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/removeNamedItem)
impl TNamedNodeMap with remove_named_item(self : Self, qualified_name : String) -> Attr {
  named_node_map_remove_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
/// [NamedNodeMap.removeNamedItemNS](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/removeNamedItemNS)
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

///|
impl TNamedNodeMap with item(self : Self, index : UInt) -> Attr {
  self.item_opt(index).unwrap()
}

///|
impl TNamedNodeMap with get_named_item(self : Self, qualified_name : String) -> Attr {
  self.get_named_item_opt(qualified_name).unwrap()
}

///|
impl TNamedNodeMap with get_named_item_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr {
  self.get_named_item_ns_opt(namespace_, local_name).unwrap()
}

///|
impl TNamedNodeMap with set_named_item(self : Self, attr : &TAttr) -> Attr {
  self.set_named_item_opt(attr).unwrap()
}

///|
impl TNamedNodeMap with set_named_item_ns(self : Self, attr : &TAttr) -> Attr {
  self.set_named_item_ns_opt(attr).unwrap()
}
