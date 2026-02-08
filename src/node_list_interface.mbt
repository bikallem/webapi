// Do not edit. This file is generated.
// MoonBit type: NodeList
// Specifications: dom.idl

/// [NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList)
#external
pub type NodeList

pub impl TJsValue for NodeList with to_js(self: NodeList) -> JsValue = "%identity"

pub fn[T: TNodeList] NodeList::into(self : NodeList) -> T = "%identity"

pub impl TNodeList for NodeList

/// [NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList) interface.
pub trait TNodeList: TJsValue {
  length(self : Self) -> UInt = _
}

/// [NodeList.length](https://developer.mozilla.org/en-US/docs/Web/API/NodeList/length)
impl TNodeList with length(self : Self) -> UInt {
  node_list_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}