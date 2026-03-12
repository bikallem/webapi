// Do not edit. This file is generated.
// MoonBit type: StorageEvent
// Specifications: html.idl

/// [StorageEvent](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent)
#external
pub type StorageEvent

pub impl TJsValue for StorageEvent with to_js(self: StorageEvent) -> JsValue = "%identity"

pub impl FromJsAny for StorageEvent with from_js_any(value : JsAny) -> StorageEvent = "%identity"

pub fn[T: TStorageEvent] StorageEvent::into(self : StorageEvent) -> T = "%identity"

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