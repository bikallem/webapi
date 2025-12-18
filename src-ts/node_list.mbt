// Auto-generated MoonBit bindings for NodeList

// Do not edit manually

///|
#external
pub type NodeList

///|
pub trait TNodeList: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> Node? = _
}

///|
pub impl TNodeList for NodeList

///|
pub impl TJsValue for NodeList with to_js(self : NodeList) -> JsValue = "%identity"

///|
fn node_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_NodeList" "item"

///|
impl TNodeList with item(self : Self, index : UInt) -> Node? {
  node_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).as_option()
}

///|
fn node_list_length_ffi(obj : JsValue) -> UInt = "webapi_NodeList" "length"

///|
impl TNodeList with length(self : Self) -> UInt {
  node_list_length_ffi(self.to_js())
}
