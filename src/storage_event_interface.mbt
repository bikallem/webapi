// Do not edit. This file is generated.
// MoonBit type: StorageEvent
// Specifications: html.idl

///|
/// [StorageEvent](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent)
#external
pub type StorageEvent

///|
pub impl TJsValue for StorageEvent with to_js(self : StorageEvent) -> JsValue = "%identity"

///|
pub fn[T : TStorageEvent] StorageEvent::into(self : StorageEvent) -> T = "%identity"

///|
pub impl TStorageEvent for StorageEvent

///|
pub impl TEvent for StorageEvent

///|
extern "js" fn storage_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> StorageEvent = "(type_, event_init_dict) => new StorageEvent(type_, event_init_dict)"

///|
pub fn StorageEvent::new(
  type_ : String,
  event_init_dict? : StorageEventInit = StorageEventInit::empty(),
) -> StorageEvent {
  storage_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [StorageEvent](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent) interface.
pub trait TStorageEvent: TEvent {
  key(self : Self) -> String = _
  old_value(self : Self) -> String = _
  new_value(self : Self) -> String = _
  url(self : Self) -> String = _
  storage_area(self : Self) -> Storage = _
  init_storage_event(
    self : Self,
    type_ : String,
    bubbles? : Bool,
    cancelable? : Bool,
    key? : String,
    old_value? : String,
    new_value? : String,
    url? : String,
    storage_area? : &TStorage,
  ) -> Unit = _
}

///|
extern "js" fn storage_event_key_ffi(obj : JsValue) -> String = "(obj) => obj.key"

///|
/// [StorageEvent.key](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/key)
impl TStorageEvent with key(self : Self) -> String {
  storage_event_key_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn storage_event_old_value_ffi(obj : JsValue) -> String = "(obj) => obj.oldValue"

///|
/// [StorageEvent.oldValue](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/oldValue)
impl TStorageEvent with old_value(self : Self) -> String {
  storage_event_old_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn storage_event_new_value_ffi(obj : JsValue) -> String = "(obj) => obj.newValue"

///|
/// [StorageEvent.newValue](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/newValue)
impl TStorageEvent with new_value(self : Self) -> String {
  storage_event_new_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn storage_event_url_ffi(obj : JsValue) -> String = "(obj) => obj.url"

///|
/// [StorageEvent.url](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/url)
impl TStorageEvent with url(self : Self) -> String {
  storage_event_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn storage_event_storage_area_ffi(obj : JsValue) -> Storage = "(obj) => obj.storageArea"

///|
/// [StorageEvent.storageArea](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/storageArea)
impl TStorageEvent with storage_area(self : Self) -> Storage {
  storage_event_storage_area_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn storage_event_init_storage_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  key : JsValue,
  old_value : JsValue,
  new_value : JsValue,
  url : JsValue,
  storage_area : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable, key, old_value, new_value, url, storage_area) => obj.initStorageEvent(type_, bubbles, cancelable, key, old_value, new_value, url, storage_area)"

///|
/// [StorageEvent.initStorageEvent](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent/initStorageEvent)
impl TStorageEvent with init_storage_event(
  self : Self,
  type_ : String,
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  key? : String = JsValue::null(),
  old_value? : String = JsValue::null(),
  new_value? : String = JsValue::null(),
  url? : String = "",
  storage_area? : &TStorage = JsValue::null(),
) -> Unit {
  storage_event_init_storage_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(key),
    TJsValue::to_js(old_value),
    TJsValue::to_js(new_value),
    TJsValue::to_js(url),
    TJsValue::to_js(storage_area),
  )
}
