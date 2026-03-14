// Do not edit. This file is generated.
// MoonBit type: MimeTypeArray
// Specifications: html.idl

/// [MimeTypeArray](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray)
#external
pub type MimeTypeArray

pub impl TJsValue for MimeTypeArray with to_js(self: MimeTypeArray) -> JsValue = "%identity"

pub impl FromJsAny for MimeTypeArray with from_js_any(value : JsAny) -> MimeTypeArray = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TMimeTypeArray] MimeTypeArray::into(self : MimeTypeArray) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TMimeTypeArray] MimeTypeArray::unsafe_into(self : MimeTypeArray) -> T = "%identity"

pub impl HasConstructor for MimeTypeArray with constructor_name() { "MimeTypeArray" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TMimeTypeArray + HasConstructor] MimeTypeArray::try_into(self : MimeTypeArray) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TMimeTypeArray for MimeTypeArray

/// [MimeTypeArray](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray) interface.
pub trait TMimeTypeArray: TJsValue {
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> MimeType? = _
  named_item_opt(self : Self, name : String) -> MimeType? = _
  item(self : Self, index : UInt) -> MimeType = _
  named_item(self : Self, name : String) -> MimeType = _
}

/// [MimeTypeArray.length](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray/length)
impl TMimeTypeArray with length(self : Self) -> UInt {
  mime_type_array_length_ffi(TJsValue::to_js(self))
}

/// [MimeTypeArray.item](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray/item)
impl TMimeTypeArray with item_opt(self : Self, 
index : UInt) -> MimeType? {
  mime_type_array_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [MimeTypeArray.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray/namedItem)
impl TMimeTypeArray with named_item_opt(self : Self, 
name : String) -> MimeType? {
  mime_type_array_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

impl TMimeTypeArray with item(self : Self, 
index : UInt) -> MimeType {
  self.item_opt(index).unwrap()
}

impl TMimeTypeArray with named_item(self : Self, 
name : String) -> MimeType {
  self.named_item_opt(name).unwrap()
}

#cfg(target="js")
extern "js" fn mime_type_array_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn mime_type_array_length_ffi(obj: JsValue) -> UInt {
  mime_type_array_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn mime_type_array_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

#cfg(target="js")
extern "js" fn mime_type_array_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.namedItem(name)"

#cfg(target="wasm-gc")
fn mime_type_array_length_ffi(obj: JsValue) -> UInt = "webapi_MimeTypeArray" "get_length"

#cfg(target="wasm-gc")
fn mime_type_array_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_MimeTypeArray" "item"

#cfg(target="wasm-gc")
fn mime_type_array_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_MimeTypeArray" "namedItem"