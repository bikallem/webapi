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
  key(self : Self, index : UInt) -> String = _
  clear(self : Self) -> Unit = _
}

///|
extern "js" fn storage_key_ffi(obj : JsValue, index : JsValue) -> String = "(obj, index) => obj.key(obj, index)"

///|
impl TStorage with key(self : Self, index : UInt) -> String {
  storage_key_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn storage_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear(obj)"

///|
impl TStorage with clear(self : Self) -> Unit {
  storage_clear_ffi(TJsValue::to_js(self))
}
