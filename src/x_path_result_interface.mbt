///|
#external
pub type XPathResult

///|
pub impl TJsValue for XPathResult with to_js(self : XPathResult) -> JsValue = "%identity"

///|
pub fn[T : TXPathResult] XPathResult::into(self : XPathResult) -> T = "%identity"

///|
pub impl TXPathResult for XPathResult

///|
pub const X_PATH_RESULT_ANY_TYPE : UInt = 0

///|
pub const X_PATH_RESULT_NUMBER_TYPE : UInt = 1

///|
pub const X_PATH_RESULT_STRING_TYPE : UInt = 2

///|
pub const X_PATH_RESULT_BOOLEAN_TYPE : UInt = 3

///|
pub const X_PATH_RESULT_UNORDERED_NODE_ITERATOR_TYPE : UInt = 4

///|
pub const X_PATH_RESULT_ORDERED_NODE_ITERATOR_TYPE : UInt = 5

///|
pub const X_PATH_RESULT_UNORDERED_NODE_SNAPSHOT_TYPE : UInt = 6

///|
pub const X_PATH_RESULT_ORDERED_NODE_SNAPSHOT_TYPE : UInt = 7

///|
pub const X_PATH_RESULT_ANY_UNORDERED_NODE_TYPE : UInt = 8

///|
pub const X_PATH_RESULT_FIRST_ORDERED_NODE_TYPE : UInt = 9

///|
pub trait TXPathResult: TJsValue {
  iterate_next(self : Self) -> Node = _
  snapshot_item(self : Self, index : UInt) -> Node = _
}

///|
extern "js" fn x_path_result_iterate_next_ffi(obj : JsValue) -> Node = "(obj) => obj.iterateNext(obj)"

///|
impl TXPathResult with iterate_next(self : Self) -> Node {
  x_path_result_iterate_next_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_snapshot_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> Node = "(obj, index) => obj.snapshotItem(obj, index)"

///|
impl TXPathResult with snapshot_item(self : Self, index : UInt) -> Node {
  x_path_result_snapshot_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}
