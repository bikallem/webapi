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
pub impl FromJsAny for RadioNodeList with from_js_any(value : JsAny) -> RadioNodeList = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TRadioNodeList] RadioNodeList::into(self : RadioNodeList) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TRadioNodeList] RadioNodeList::unsafe_into(
  self : RadioNodeList,
) -> T = "%identity"

///|
pub impl HasConstructor for RadioNodeList with constructor_name() {
  "RadioNodeList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TRadioNodeList + HasConstructor] RadioNodeList::try_into(
  self : RadioNodeList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn radio_node_list_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn radio_node_list_value_ffi(obj : JsValue) -> String {
  radio_node_list_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn radio_node_list_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="wasm-gc")
fn radio_node_list_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_RadioNodeList" "get_value"

///|
#cfg(target="wasm-gc")
fn radio_node_list_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(radio_node_list_value_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn radio_node_list_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_RadioNodeList" "set_value"
