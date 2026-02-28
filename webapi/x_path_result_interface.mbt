// Do not edit. This file is generated.
// MoonBit type: XPathResult
// Specifications: dom.idl

///|
/// [XPathResult](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult)
#external
pub type XPathResult

///|
pub impl TJsValue for XPathResult with to_js(self : XPathResult) -> JsValue = "%identity"

///|
pub impl FromJsAny for XPathResult with from_js_any(value : JsAny) -> XPathResult = "%identity"

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
/// [XPathResult](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult) interface.
pub trait TXPathResult: TJsValue {
  result_type(self : Self) -> UInt = _
  number_value(self : Self) -> Double = _
  string_value(self : Self) -> String = _
  boolean_value(self : Self) -> Bool = _
  single_node_value(self : Self) -> Node = _
  invalid_iterator_state(self : Self) -> Bool = _
  snapshot_length(self : Self) -> UInt = _
  iterate_next_opt(self : Self) -> Node? = _
  snapshot_item_opt(self : Self, index : UInt) -> Node? = _
}

///|
/// [XPathResult.resultType](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/resultType)
impl TXPathResult with result_type(self : Self) -> UInt {
  x_path_result_result_type_ffi(TJsValue::to_js(self))
}

///|
/// [XPathResult.numberValue](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/numberValue)
impl TXPathResult with number_value(self : Self) -> Double {
  x_path_result_number_value_ffi(TJsValue::to_js(self))
}

///|
/// [XPathResult.stringValue](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/stringValue)
impl TXPathResult with string_value(self : Self) -> String {
  x_path_result_string_value_ffi(TJsValue::to_js(self))
}

///|
/// [XPathResult.booleanValue](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/booleanValue)
impl TXPathResult with boolean_value(self : Self) -> Bool {
  x_path_result_boolean_value_ffi(TJsValue::to_js(self))
}

///|
/// [XPathResult.singleNodeValue](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/singleNodeValue)
impl TXPathResult with single_node_value(self : Self) -> Node {
  x_path_result_single_node_value_ffi(TJsValue::to_js(self))
}

///|
/// [XPathResult.invalidIteratorState](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/invalidIteratorState)
impl TXPathResult with invalid_iterator_state(self : Self) -> Bool {
  x_path_result_invalid_iterator_state_ffi(TJsValue::to_js(self))
}

///|
/// [XPathResult.snapshotLength](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/snapshotLength)
impl TXPathResult with snapshot_length(self : Self) -> UInt {
  x_path_result_snapshot_length_ffi(TJsValue::to_js(self))
}

///|
/// [XPathResult.iterateNext](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/iterateNext)
impl TXPathResult with iterate_next_opt(self : Self) -> Node? {
  x_path_result_iterate_next_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [XPathResult.snapshotItem](https://developer.mozilla.org/en-US/docs/Web/API/XPathResult/snapshotItem)
impl TXPathResult with snapshot_item_opt(self : Self, index : UInt) -> Node? {
  x_path_result_snapshot_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
pub fn[T : TNode] XPathResult::iterate_next(self : XPathResult) -> T {
  self.iterate_next_opt().unwrap().into()
}

///|
pub fn[T : TNode] XPathResult::snapshot_item(
  self : XPathResult,
  index : UInt,
) -> T {
  self.snapshot_item_opt(index).unwrap().into()
}
