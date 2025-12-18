// Auto-generated MoonBit bindings for NodeList interface
// Do not edit manually

#external
pub type NodeList

pub impl TJsValue for NodeList with to_js(self: NodeList) -> JsValue = "%identity"


pub fn[T: TNodeList] NodeList::into(self : NodeList) -> T = "%identity"
pub impl TNodeList for NodeList

pub trait TNodeList: TJSValue {
  length(self: Self) -> UInt = _
}

///|
fn node_list_length_ffi(obj : JsValue) -> UInt = "webapi_NodeList" "length"

///|
impl TNodeList with length(self : Self) -> UInt {
  node_list_length_ffi(self.to_js())
}