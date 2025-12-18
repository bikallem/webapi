// Auto-generated MoonBit bindings for NamedNodeMap interface
// Do not edit manually

#external
pub type NamedNodeMap

pub impl TJsValue for NamedNodeMap with to_js(self: NamedNodeMap) -> JsValue = "%identity"


pub fn[T: TNamedNodeMap] NamedNodeMap::into(self : NamedNodeMap) -> T = "%identity"
pub impl TNamedNodeMap for NamedNodeMap

pub trait TNamedNodeMap: TJSValue {
  length(self: Self) -> UInt = _
  get_named_item_n_s(self: Self, namespace : String, local_name : String) -> &TAttr = _
  set_named_item(self: Self, attr : &TAttr) -> &TAttr = _
  set_named_item_n_s(self: Self, attr : &TAttr) -> &TAttr = _
  remove_named_item(self: Self, qualified_name : String) -> &TAttr = _
  remove_named_item_n_s(self: Self, namespace : String, local_name : String) -> &TAttr = _
}

///|
fn named_node_map_length_ffi(obj : JsValue) -> UInt = "webapi_NamedNodeMap" "length"

///|
impl TNamedNodeMap with length(self : Self) -> UInt {
  named_node_map_length_ffi(self.to_js())
}

///|
fn named_node_map_get_named_item_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> JsValue = "webapi_NamedNodeMap" "getNamedItemNS"

///|
impl TNamedNodeMap with get_named_item_n_s(self : Self, namespace : String, local_name : String) -> &TAttr {
  named_node_map_get_named_item_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name)).unsafe_cast()
}

///|
fn named_node_map_set_named_item_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_NamedNodeMap" "setNamedItem"

///|
impl TNamedNodeMap with set_named_item(self : Self, attr : &TAttr) -> &TAttr {
  named_node_map_set_named_item_ffi(self.to_js(), attr.to_js()).unsafe_cast()
}

///|
fn named_node_map_set_named_item_n_s_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_NamedNodeMap" "setNamedItemNS"

///|
impl TNamedNodeMap with set_named_item_n_s(self : Self, attr : &TAttr) -> &TAttr {
  named_node_map_set_named_item_n_s_ffi(self.to_js(), attr.to_js()).unsafe_cast()
}

///|
fn named_node_map_remove_named_item_ffi(obj : JsValue, qualified_name : JsValue) -> JsValue = "webapi_NamedNodeMap" "removeNamedItem"

///|
impl TNamedNodeMap with remove_named_item(self : Self, qualified_name : String) -> &TAttr {
  named_node_map_remove_named_item_ffi(self.to_js(), TJsValue::to_js(qualified_name)).unsafe_cast()
}

///|
fn named_node_map_remove_named_item_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> JsValue = "webapi_NamedNodeMap" "removeNamedItemNS"

///|
impl TNamedNodeMap with remove_named_item_n_s(self : Self, namespace : String, local_name : String) -> &TAttr {
  named_node_map_remove_named_item_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name)).unsafe_cast()
}