// Do not edit. This file is generated.
// MoonBit type: MimeTypeArray
// Specifications: html.idl

///|
/// [MimeTypeArray](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray)
#external
pub type MimeTypeArray

///|
pub impl TJsValue for MimeTypeArray with to_js(self : MimeTypeArray) -> JsValue = "%identity"

///|
pub impl FromJsAny for MimeTypeArray with from_js_any(value : JsAny) -> MimeTypeArray = "%identity"

///|
pub fn[T : TMimeTypeArray] MimeTypeArray::into(self : MimeTypeArray) -> T = "%identity"

///|
pub impl TMimeTypeArray for MimeTypeArray

///|
/// [MimeTypeArray](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray) interface.
pub trait TMimeTypeArray: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> MimeType? = _
  named_item(self : Self, name : String) -> MimeType? = _
}

///|
/// [MimeTypeArray.length](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray/length)
impl TMimeTypeArray with length(self : Self) -> UInt {
  mime_type_array_length_ffi(TJsValue::to_js(self))
}

///|
/// [MimeTypeArray.item](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray/item)
impl TMimeTypeArray with item(self : Self, index : UInt) -> MimeType? {
  mime_type_array_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [MimeTypeArray.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray/namedItem)
impl TMimeTypeArray with named_item(self : Self, name : String) -> MimeType? {
  mime_type_array_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}
