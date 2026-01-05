// Do not edit. This file is generated.
// MoonBit type: XPathResult
// Specifications: dom.idl

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
  result_type(self : Self) -> UInt = _
  number_value(self : Self) -> Double = _
  string_value(self : Self) -> String = _
  boolean_value(self : Self) -> Bool = _
  single_node_value(self : Self) -> Node = _
  invalid_iterator_state(self : Self) -> Bool = _
  snapshot_length(self : Self) -> UInt = _
  iterate_next(self : Self) -> Node? = _
  snapshot_item(self : Self, index : UInt) -> Node? = _
}

///|
extern "js" fn x_path_result_result_type_ffi(obj : JsValue) -> UInt = "(obj) => obj.resultType"

///|
impl TXPathResult with result_type(self : Self) -> UInt {
  x_path_result_result_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_number_value_ffi(obj : JsValue) -> Double = "(obj) => obj.numberValue"

///|
impl TXPathResult with number_value(self : Self) -> Double {
  x_path_result_number_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_string_value_ffi(obj : JsValue) -> String = "(obj) => obj.stringValue"

///|
impl TXPathResult with string_value(self : Self) -> String {
  x_path_result_string_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_boolean_value_ffi(obj : JsValue) -> Bool = "(obj) => obj.booleanValue"

///|
impl TXPathResult with boolean_value(self : Self) -> Bool {
  x_path_result_boolean_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_single_node_value_ffi(obj : JsValue) -> Node = "(obj) => obj.singleNodeValue"

///|
impl TXPathResult with single_node_value(self : Self) -> Node {
  x_path_result_single_node_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_invalid_iterator_state_ffi(obj : JsValue) -> Bool = "(obj) => obj.invalidIteratorState"

///|
impl TXPathResult with invalid_iterator_state(self : Self) -> Bool {
  x_path_result_invalid_iterator_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_snapshot_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.snapshotLength"

///|
impl TXPathResult with snapshot_length(self : Self) -> UInt {
  x_path_result_snapshot_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn x_path_result_iterate_next_ffi(obj : JsValue) -> JsValue = "(obj) => obj.iterateNext(obj)"

///|
impl TXPathResult with iterate_next(self : Self) -> Node? {
  let result = x_path_result_iterate_next_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn x_path_result_snapshot_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.snapshotItem(obj, index)"

///|
impl TXPathResult with snapshot_item(self : Self, index : UInt) -> Node? {
  let result = x_path_result_snapshot_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
