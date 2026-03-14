// Do not edit. This file is generated.
// MoonBit type: NodeList
// Specifications: dom.idl

/// [NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList)
#external
pub type NodeList

pub impl TJsValue for NodeList with to_js(self: NodeList) -> JsValue = "%identity"

pub impl FromJsAny for NodeList with from_js_any(value : JsAny) -> NodeList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TNodeList] NodeList::into(self : NodeList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TNodeList] NodeList::unsafe_into(self : NodeList) -> T = "%identity"

pub impl HasConstructor for NodeList with constructor_name() { "NodeList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNodeList + HasConstructor] NodeList::try_into(self : NodeList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn node_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

#cfg(target="js")
extern "js" fn node_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn node_list_length_ffi(obj: JsValue) -> UInt {
  node_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn node_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_NodeList" "item"

#cfg(target="wasm-gc")
fn node_list_length_ffi(obj: JsValue) -> UInt = "webapi_NodeList" "get_length"