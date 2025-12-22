///|
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
pub trait TStorageEvent: TEvent {
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
) -> Unit = "(obj, type_, bubbles, cancelable, key, old_value, new_value, url, storage_area) => obj.initStorageEvent(obj, type_, bubbles, cancelable, key, old_value, new_value, url, storage_area)"

///|
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
