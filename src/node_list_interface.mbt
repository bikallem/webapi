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
  item(self : Self, index : UInt) -> Node? = _
  length(self : Self) -> UInt = _
}

/// [NodeList.item](https://developer.mozilla.org/en-US/docs/Web/API/NodeList/item)
impl TNodeList with item(self : Self, 
index : UInt) -> Node? {
  let result = node_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [NodeList.length](https://developer.mozilla.org/en-US/docs/Web/API/NodeList/length)
impl TNodeList with length(self : Self) -> UInt {
  node_list_length_ffi(TJsValue::to_js(self))
}