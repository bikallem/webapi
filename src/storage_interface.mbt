// Do not edit. This file is generated.
// MoonBit type: Storage
// Specifications: html.idl

///|
/// [Storage](https://developer.mozilla.org/en-US/docs/Web/API/Storage)
#external
pub type Storage

///|
pub impl TJsValue for Storage with to_js(self : Storage) -> JsValue = "%identity"

///|
pub fn[T : TStorage] Storage::into(self : Storage) -> T = "%identity"

///|
pub impl TStorage for Storage

///|
/// [Storage](https://developer.mozilla.org/en-US/docs/Web/API/Storage) interface.
pub trait TStorage: TJsValue {
  length(self : Self) -> UInt = _
  key(self : Self, index : UInt) -> String? = _
  clear(self : Self) -> Unit = _
}

///|
/// [Storage.length](https://developer.mozilla.org/en-US/docs/Web/API/Storage/length)
impl TStorage with length(self : Self) -> UInt {
  storage_length_ffi(TJsValue::to_js(self))
}

///|
/// [Storage.key](https://developer.mozilla.org/en-US/docs/Web/API/Storage/key)
impl TStorage with key(self : Self, index : UInt) -> String? {
  let result = storage_key_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [Storage.clear](https://developer.mozilla.org/en-US/docs/Web/API/Storage/clear)
impl TStorage with clear(self : Self) -> Unit {
  storage_clear_ffi(TJsValue::to_js(self))
}
