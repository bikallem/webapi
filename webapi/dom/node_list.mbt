// Auto-generated MoonBit bindings for NodeList

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface NodeList {
//   getter Node? item(unsigned long index);
//   readonly attribute unsigned long length;
//   iterable<Node>;
// };

///|
#external
pub type NodeList

///|
pub trait TNodeList: TJsValue {
  length(self : Self) -> Int = _
  item(self : Self, index : Int) -> Node? = _
}

///|
pub impl TNodeList for NodeList

///|
pub impl TJsValue for NodeList with to_js(self : NodeList) -> JsValue = "%identity"

///|
fn node_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_NodeList" "item"

///|
impl TNodeList with item(self : Self, index : Int) -> Node? {
  node_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).as_option()
}

///|
fn node_list_length_ffi(obj : JsValue) -> Int = "webapi_NodeList" "length"

///|
impl TNodeList with length(self : Self) -> Int {
  node_list_length_ffi(self.to_js())
}
