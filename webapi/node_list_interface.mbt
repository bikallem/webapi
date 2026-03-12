// Do not edit. This file is generated.
// MoonBit type: NodeList
// Specifications: dom.idl

/// [NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList)
#external
pub type NodeList

pub impl TJsValue for NodeList with to_js(self: NodeList) -> JsValue = "%identity"

pub impl FromJsAny for NodeList with from_js_any(value : JsAny) -> NodeList = "%identity"

pub fn[T: TNodeList] NodeList::into(self : NodeList) -> T = "%identity"

pub impl TNodeList for NodeList

/// [NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList) interface.
pub trait TNodeList: TJsValue {
  item_opt(self : Self, index : UInt) -> Node? = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> Node = _
}

/// [NodeList.item](https://developer.mozilla.org/en-US/docs/Web/API/NodeList/item)
impl TNodeList with item_opt(self : Self, 
index : UInt) -> Node? {
  node_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [NodeList.length](https://developer.mozilla.org/en-US/docs/Web/API/NodeList/length)
impl TNodeList with length(self : Self) -> UInt {
  node_list_length_ffi(TJsValue::to_js(self))
}

impl TNodeList with item(self : Self, 
index : UInt) -> Node {
  self.item_opt(index).unwrap()
}