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
pub fn[T : TTouchList] TouchList::into(self : TouchList) -> T = "%identity"

///|
pub impl TTouchList for TouchList

///|
/// [TouchList](https://developer.mozilla.org/en-US/docs/Web/API/TouchList) interface.
pub trait TTouchList: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> Touch? = _
}

///|
/// [TouchList.length](https://developer.mozilla.org/en-US/docs/Web/API/TouchList/length)
impl TTouchList with length(self : Self) -> UInt {
  touch_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [TouchList.item](https://developer.mozilla.org/en-US/docs/Web/API/TouchList/item)
impl TTouchList with item(self : Self, index : UInt) -> Touch? {
  let result = touch_list_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
