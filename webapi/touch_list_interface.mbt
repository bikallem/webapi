// Do not edit. This file is generated.
// MoonBit type: TouchList
// Specifications: touch-events.idl

///|
/// [TouchList](https://developer.mozilla.org/en-US/docs/Web/API/TouchList)
#external
pub type TouchList

///|
pub impl TJsValue for TouchList with to_js(self : TouchList) -> JsValue = "%identity"

///|
pub impl FromJsAny for TouchList with from_js_any(value : JsAny) -> TouchList = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTouchList] TouchList::into(self : TouchList) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTouchList] TouchList::unsafe_into(self : TouchList) -> T = "%identity"

///|
pub impl HasConstructor for TouchList with constructor_name() {
  "TouchList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTouchList + HasConstructor] TouchList::try_into(
  self : TouchList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TTouchList for TouchList

///|
/// [TouchList](https://developer.mozilla.org/en-US/docs/Web/API/TouchList) interface.
pub trait TTouchList: TJsValue {
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> Touch? = _
  item(self : Self, index : UInt) -> Touch = _
}

///|
/// [TouchList.length](https://developer.mozilla.org/en-US/docs/Web/API/TouchList/length)
impl TTouchList with length(self : Self) -> UInt {
  touch_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [TouchList.item](https://developer.mozilla.org/en-US/docs/Web/API/TouchList/item)
impl TTouchList with item_opt(self : Self, index : UInt) -> Touch? {
  touch_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
impl TTouchList with item(self : Self, index : UInt) -> Touch {
  self.item_opt(index).unwrap()
}

///|
#cfg(target="js")
extern "js" fn touch_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn touch_list_length_ffi(obj : JsValue) -> UInt {
  touch_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="wasm-gc")
fn touch_list_length_ffi(obj : JsValue) -> UInt = "webapi_TouchList" "get_length"

///|
#cfg(target="wasm-gc")
fn touch_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_TouchList" "item"
