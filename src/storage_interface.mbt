// Do not edit. This file is generated.
// MoonBit type: Storage
// Specifications: html.idl

///|
#external
pub type Storage

///|
pub impl TJsValue for Storage with to_js(self : Storage) -> JsValue = "%identity"

///|
pub fn[T : TStorage] Storage::into(self : Storage) -> T = "%identity"

///|
pub impl TStorage for Storage

///|
pub trait TStorage: TJsValue {
  length(self : Self) -> UInt = _
  key(self : Self, index : UInt) -> String? = _
  clear(self : Self) -> Unit = _
}

///|
extern "js" fn storage_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TStorage with length(self : Self) -> UInt {
  storage_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn storage_key_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.key(index)"

///|
impl TStorage with key(self : Self, index : UInt) -> String? {
  let result = storage_key_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn storage_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
impl TStorage with clear(self : Self) -> Unit {
  storage_clear_ffi(TJsValue::to_js(self))
}
