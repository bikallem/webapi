// Do not edit. This file is generated.
// MoonBit type: IDBVersionChangeEvent
// Specifications: IndexedDB.idl

/// [IDBVersionChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent)
#external
pub type IDBVersionChangeEvent

pub impl TJsValue for IDBVersionChangeEvent with to_js(self: IDBVersionChangeEvent) -> JsValue = "%identity"

pub impl FromJsAny for IDBVersionChangeEvent with from_js_any(value : JsAny) -> IDBVersionChangeEvent = "%identity"

pub fn[T: TIDBVersionChangeEvent] IDBVersionChangeEvent::into(self : IDBVersionChangeEvent) -> T = "%identity"

pub impl TIDBVersionChangeEvent for IDBVersionChangeEvent

pub impl TEvent for IDBVersionChangeEvent

pub fn IDBVersionChangeEvent::new(type_ : String, 
event_init_dict? : IDBVersionChangeEventInit) -> IDBVersionChangeEvent {
  idb_version_change_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [IDBVersionChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent) interface.
pub trait TIDBVersionChangeEvent: TEvent {
  old_version(self : Self) -> UInt64 = _
  new_version(self : Self) -> UInt64 = _
}

/// [IDBVersionChangeEvent.oldVersion](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent/oldVersion)
impl TIDBVersionChangeEvent with old_version(self : Self) -> UInt64 {
  idb_version_change_event_old_version_ffi(TJsValue::to_js(self))
}

/// [IDBVersionChangeEvent.newVersion](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent/newVersion)
impl TIDBVersionChangeEvent with new_version(self : Self) -> UInt64 {
  idb_version_change_event_new_version_ffi(TJsValue::to_js(self))
}