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
pub impl FromJsAny for Storage with from_js_any(value : JsAny) -> Storage = "%identity"

///|
pub fn[T : TStorage] Storage::into(self : Storage) -> T = "%identity"

///|
pub impl TStorage for Storage

///|
/// [Storage](https://developer.mozilla.org/en-US/docs/Web/API/Storage) interface.
pub trait TStorage: TJsValue {
  length(self : Self) -> UInt = _
  key(self : Self, index : UInt) -> String? = _
  get_item(self : Self, key : String) -> String? = _
  set_item(self : Self, key : String, value : String) -> Unit = _
  remove_item(self : Self, key : String) -> Unit = _
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
  storage_key_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option_prim()
}

///|
/// [Storage.getItem](https://developer.mozilla.org/en-US/docs/Web/API/Storage/getItem)
impl TStorage with get_item(self : Self, key : String) -> String? {
  storage_get_item_ffi(TJsValue::to_js(self), TJsValue::to_js(key)).to_option_prim()
}

///|
/// [Storage.setItem](https://developer.mozilla.org/en-US/docs/Web/API/Storage/setItem)
impl TStorage with set_item(self : Self, key : String, value : String) -> Unit {
  storage_set_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key),
    TJsValue::to_js(value),
  )
}

///|
/// [Storage.removeItem](https://developer.mozilla.org/en-US/docs/Web/API/Storage/removeItem)
impl TStorage with remove_item(self : Self, key : String) -> Unit {
  storage_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(key))
}

///|
/// [Storage.clear](https://developer.mozilla.org/en-US/docs/Web/API/Storage/clear)
impl TStorage with clear(self : Self) -> Unit {
  storage_clear_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn storage_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn storage_length_ffi(obj : JsValue) -> UInt {
  storage_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn storage_key_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.key(index)"

///|
#cfg(target="js")
extern "js" fn storage_get_item_ffi(obj : JsValue, key : JsValue) -> JsValue = "(obj, key) => obj.getItem(key)"

///|
#cfg(target="js")
extern "js" fn storage_set_item_ffi(
  obj : JsValue,
  key : JsValue,
  value : JsValue,
) -> Unit = "(obj, key, value) => obj.setItem(key, value)"

///|
#cfg(target="js")
extern "js" fn storage_remove_item_ffi(obj : JsValue, key : JsValue) -> Unit = "(obj, key) => obj.removeItem(key)"

///|
#cfg(target="js")
extern "js" fn storage_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
#cfg(target="wasm-gc")
fn storage_length_ffi(obj : JsValue) -> UInt = "webapi_Storage" "get_length"

///|
#cfg(target="wasm-gc")
fn storage_key_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_Storage" "key"

///|
#cfg(target="wasm-gc")
fn storage_get_item_ffi(obj : JsValue, key : JsValue) -> JsValue = "webapi_Storage" "getItem"

///|
#cfg(target="wasm-gc")
fn storage_set_item_ffi(obj : JsValue, key : JsValue, value : JsValue) -> Unit = "webapi_Storage" "setItem"

///|
#cfg(target="wasm-gc")
fn storage_remove_item_ffi(obj : JsValue, key : JsValue) -> Unit = "webapi_Storage" "removeItem"

///|
#cfg(target="wasm-gc")
fn storage_clear_ffi(obj : JsValue) -> Unit = "webapi_Storage" "clear"
