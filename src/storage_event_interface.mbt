// Do not edit. This file is generated.
// MoonBit type: StorageEvent
// Specifications: html.idl

/// [StorageEvent](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent)
#external
pub type StorageEvent

pub impl TJsValue for StorageEvent with to_js(self: StorageEvent) -> JsValue = "%identity"

pub impl FromJsAny for StorageEvent with from_js_any(value : JsAny) -> StorageEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TStorageEvent] StorageEvent::into(self : StorageEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TStorageEvent] StorageEvent::unsafe_into(self : StorageEvent) -> T = "%identity"

pub impl HasConstructor for StorageEvent with constructor_name() { "StorageEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TStorageEvent + HasConstructor] StorageEvent::try_into(self : StorageEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TStorageEvent for StorageEvent

pub impl TEvent for StorageEvent

pub fn StorageEvent::new(type_ : String, 
event_init_dict? : StorageEventInit) -> StorageEvent {
  storage_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [StorageEvent](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent) interface.
pub trait TStorageEvent: TEvent {
  key(self : Self) -> String = _
  old_value(self : Self) -> String = _
  new_value(self : Self) -> String = _
  url(self : Self) -> String = _
  storage_area(self : Self) -> Storage = _
  init_storage_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool, key? : String, old_value? : String, new_value? : String, url? : String, storage_area? : &TStorage) -> Unit = _
}

/// [StorageEvent.key](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/key)
impl TStorageEvent with key(self : Self) -> String {
  storage_event_key_ffi(TJsValue::to_js(self))
}

/// [StorageEvent.oldValue](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/oldValue)
impl TStorageEvent with old_value(self : Self) -> String {
  storage_event_old_value_ffi(TJsValue::to_js(self))
}

/// [StorageEvent.newValue](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/newValue)
impl TStorageEvent with new_value(self : Self) -> String {
  storage_event_new_value_ffi(TJsValue::to_js(self))
}

/// [StorageEvent.url](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/url)
impl TStorageEvent with url(self : Self) -> String {
  storage_event_url_ffi(TJsValue::to_js(self))
}

/// [StorageEvent.storageArea](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/storageArea)
impl TStorageEvent with storage_area(self : Self) -> Storage {
  storage_event_storage_area_ffi(TJsValue::to_js(self))
}

/// [StorageEvent.initStorageEvent](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/initStorageEvent)
impl TStorageEvent with init_storage_event(self : Self, 
type_ : String, 
bubbles? : Bool, 
cancelable? : Bool, 
key? : String, 
old_value? : String, 
new_value? : String, 
url? : String, 
storage_area? : &TStorage) -> Unit {
  storage_event_init_storage_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(key), opt_to_js(old_value), opt_to_js(new_value), opt_to_js(url), opt_to_js(storage_area))
}

#cfg(target="js")
extern "js" fn storage_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> StorageEvent = "(type_, event_init_dict) => new StorageEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn storage_event_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.key"

///|
#cfg(target="js")
fn storage_event_key_ffi(obj: JsValue) -> String {
  storage_event_key_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn storage_event_old_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oldValue"

///|
#cfg(target="js")
fn storage_event_old_value_ffi(obj: JsValue) -> String {
  storage_event_old_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn storage_event_new_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.newValue"

///|
#cfg(target="js")
fn storage_event_new_value_ffi(obj: JsValue) -> String {
  storage_event_new_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn storage_event_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn storage_event_url_ffi(obj: JsValue) -> String {
  storage_event_url_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn storage_event_storage_area_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.storageArea"

///|
#cfg(target="js")
fn storage_event_storage_area_ffi(obj: JsValue) -> Storage {
  storage_event_storage_area_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn storage_event_init_storage_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, key: JsValue, old_value: JsValue, new_value: JsValue, url: JsValue, storage_area: JsValue) -> Unit = "(obj, type_, bubbles, cancelable, key, old_value, new_value, url, storage_area) => obj.initStorageEvent(type_, bubbles, cancelable, key, old_value, new_value, url, storage_area)"

#cfg(target="wasm-gc")
fn storage_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> StorageEvent = "webapi_StorageEvent" "new"

#cfg(target="wasm-gc")
fn storage_event_key_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_key"

///|
#cfg(target="wasm-gc")
fn storage_event_key_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_key_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn storage_event_old_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_oldValue"

///|
#cfg(target="wasm-gc")
fn storage_event_old_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_old_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn storage_event_new_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_newValue"

///|
#cfg(target="wasm-gc")
fn storage_event_new_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_new_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn storage_event_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_url"

///|
#cfg(target="wasm-gc")
fn storage_event_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_url_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn storage_event_storage_area_ffi(obj: JsValue) -> Storage = "webapi_StorageEvent" "get_storageArea"

#cfg(target="wasm-gc")
fn storage_event_init_storage_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, key: JsValue, old_value: JsValue, new_value: JsValue, url: JsValue, storage_area: JsValue) -> Unit = "webapi_StorageEvent" "initStorageEvent"