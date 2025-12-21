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
