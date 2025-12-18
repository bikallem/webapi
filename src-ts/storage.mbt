// Auto-generated MoonBit bindings for Storage

// Do not edit manually

///|
#external
pub type Storage

///|
pub trait TStorage: TJsValue {
  length(self : Self) -> UInt = _
  key(self : Self, index : UInt) -> String? = _
  get_item(self : Self, key : String) -> String? = _
  set_item(self : Self, key : String, value : String) -> Unit = _
  remove_item(self : Self, key : String) -> Unit = _
  clear(self : Self) -> Unit = _
}

///|
pub impl TStorage for Storage

///|
pub impl TJsValue for Storage with to_js(self : Storage) -> JsValue = "%identity"

///|
fn storage_key_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_Storage" "key"

///|
impl TStorage with key(self : Self, index : UInt) -> String? {
  storage_key_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).as_option()
}

///|
fn storage_get_item_ffi(obj : JsValue, key : JsValue) -> JsValue = "webapi_Storage" "getItem"

///|
impl TStorage with get_item(self : Self, key : String) -> String? {
  storage_get_item_ffi(TJsValue::to_js(self), TJsValue::to_js(key)).as_option()
}

///|
fn storage_set_item_ffi(obj : JsValue, key : JsValue, value : JsValue) -> Unit = "webapi_Storage" "setItem"

///|
impl TStorage with set_item(self : Self, key : String, value : String) -> Unit {
  storage_set_item_ffi(TJsValue::to_js(self), TJsValue::to_js(key), TJsValue::to_js(value))
}

///|
fn storage_remove_item_ffi(obj : JsValue, key : JsValue) -> Unit = "webapi_Storage" "removeItem"

///|
impl TStorage with remove_item(self : Self, key : String) -> Unit {
  storage_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(key))
}

///|
fn storage_clear_ffi(obj : JsValue) -> Unit = "webapi_Storage" "clear"

///|
impl TStorage with clear(self : Self) -> Unit {
  storage_clear_ffi(TJsValue::to_js(self))
}

///|
fn storage_length_ffi(obj : JsValue) -> UInt = "webapi_Storage" "length"

///|
impl TStorage with length(self : Self) -> UInt {
  storage_length_ffi(self.to_js())
}