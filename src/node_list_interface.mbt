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
pub trait TNodeList: TJsValue {}
