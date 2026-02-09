// Do not edit. This file is generated.
// MoonBit type: RadioNodeList
// Specifications: html.idl

///|
/// [RadioNodeList](https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList)
#external
pub type RadioNodeList

///|
pub impl TJsValue for RadioNodeList with to_js(self : RadioNodeList) -> JsValue = "%identity"

///|
pub fn[T : TRadioNodeList] RadioNodeList::into(self : RadioNodeList) -> T = "%identity"

///|
pub impl TRadioNodeList for RadioNodeList

///|
pub impl TNodeList for RadioNodeList

///|
/// [RadioNodeList](https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList) interface.
pub trait TRadioNodeList: TNodeList {
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
}

///|
/// [RadioNodeList.value](https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList/value)
impl TRadioNodeList with value(self : Self) -> String {
  radio_node_list_value_ffi(TJsValue::to_js(self))
}

///|
/// [RadioNodeList.value](https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList/value)
impl TRadioNodeList with set_value(self : Self, value : String) -> Unit {
  radio_node_list_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}
