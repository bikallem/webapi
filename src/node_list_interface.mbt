///|
#external
pub type NodeList

///|
pub impl TJsValue for NodeList with to_js(self : NodeList) -> JsValue = "%identity"

///|
pub fn[T : TNodeList] NodeList::into(self : NodeList) -> T = "%identity"

///|
pub impl TNodeList for NodeList

///|
pub trait TNodeList: TJsValue {
  length(self : Self) -> UInt = _
}

///|
extern "js" fn node_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TNodeList with length(self : Self) -> UInt {
  node_list_length_ffi(TJsValue::to_js(self))
}
