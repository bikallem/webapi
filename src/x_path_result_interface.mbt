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
  iterate_next(self : Self) -> Node = _
  snapshot_item(self : Self, index : UInt) -> Node = _
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
impl TXPathResult with iterate_next(self : Self) -> Node {
  self.iterate_next_opt().unwrap()
}

///|
impl TXPathResult with snapshot_item(self : Self, index : UInt) -> Node {
  self.snapshot_item_opt(index).unwrap()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_result_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.resultType"

///|
#cfg(target="js")
fn x_path_result_result_type_ffi(obj : JsValue) -> UInt {
  x_path_result_result_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_number_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.numberValue"

///|
#cfg(target="js")
fn x_path_result_number_value_ffi(obj : JsValue) -> Double {
  x_path_result_number_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_string_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.stringValue"

///|
#cfg(target="js")
fn x_path_result_string_value_ffi(obj : JsValue) -> String {
  x_path_result_string_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_boolean_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.booleanValue"

///|
#cfg(target="js")
fn x_path_result_boolean_value_ffi(obj : JsValue) -> Bool {
  x_path_result_boolean_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_single_node_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.singleNodeValue"

///|
#cfg(target="js")
fn x_path_result_single_node_value_ffi(obj : JsValue) -> Node {
  x_path_result_single_node_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_invalid_iterator_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.invalidIteratorState"

///|
#cfg(target="js")
fn x_path_result_invalid_iterator_state_ffi(obj : JsValue) -> Bool {
  x_path_result_invalid_iterator_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_snapshot_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.snapshotLength"

///|
#cfg(target="js")
fn x_path_result_snapshot_length_ffi(obj : JsValue) -> UInt {
  x_path_result_snapshot_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_result_iterate_next_ffi(obj : JsValue) -> JsValue = "(obj) => obj.iterateNext()"

///|
#cfg(target="js")
extern "js" fn x_path_result_snapshot_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.snapshotItem(index)"

///|
#cfg(target="wasm-gc")
fn x_path_result_result_type_ffi(obj : JsValue) -> UInt = "webapi_XPathResult" "get_resultType"

///|
#cfg(target="wasm-gc")
fn x_path_result_number_value_ffi(obj : JsValue) -> Double = "webapi_XPathResult" "get_numberValue"

///|
#cfg(target="wasm-gc")
fn x_path_result_string_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_XPathResult" "get_stringValue"

///|
#cfg(target="wasm-gc")
fn x_path_result_string_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(x_path_result_string_value_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn x_path_result_boolean_value_ffi(obj : JsValue) -> Bool = "webapi_XPathResult" "get_booleanValue"

///|
#cfg(target="wasm-gc")
fn x_path_result_single_node_value_ffi(obj : JsValue) -> Node = "webapi_XPathResult" "get_singleNodeValue"

///|
#cfg(target="wasm-gc")
fn x_path_result_invalid_iterator_state_ffi(obj : JsValue) -> Bool = "webapi_XPathResult" "get_invalidIteratorState"

///|
#cfg(target="wasm-gc")
fn x_path_result_snapshot_length_ffi(obj : JsValue) -> UInt = "webapi_XPathResult" "get_snapshotLength"

///|
#cfg(target="wasm-gc")
fn x_path_result_iterate_next_ffi(obj : JsValue) -> JsValue = "webapi_XPathResult" "iterateNext"

///|
#cfg(target="wasm-gc")
fn x_path_result_snapshot_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_XPathResult" "snapshotItem"
