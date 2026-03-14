// Do not edit. This file is generated.
// MoonBit type: IDBVersionChangeEvent
// Specifications: IndexedDB.idl

/// [IDBVersionChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent)
#external
pub type IDBVersionChangeEvent

pub impl TJsValue for IDBVersionChangeEvent with to_js(self: IDBVersionChangeEvent) -> JsValue = "%identity"

pub impl FromJsAny for IDBVersionChangeEvent with from_js_any(value : JsAny) -> IDBVersionChangeEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TIDBVersionChangeEvent] IDBVersionChangeEvent::into(self : IDBVersionChangeEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TIDBVersionChangeEvent] IDBVersionChangeEvent::unsafe_into(self : IDBVersionChangeEvent) -> T = "%identity"

pub impl HasConstructor for IDBVersionChangeEvent with constructor_name() { "IDBVersionChangeEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBVersionChangeEvent + HasConstructor] IDBVersionChangeEvent::try_into(self : IDBVersionChangeEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn idb_version_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> IDBVersionChangeEvent = "(type_, event_init_dict) => new IDBVersionChangeEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn idb_version_change_event_old_version_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oldVersion"

///|
#cfg(target="js")
fn idb_version_change_event_old_version_ffi(obj: JsValue) -> UInt64 {
  idb_version_change_event_old_version_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_version_change_event_new_version_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.newVersion"

///|
#cfg(target="js")
fn idb_version_change_event_new_version_ffi(obj: JsValue) -> UInt64 {
  idb_version_change_event_new_version_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn idb_version_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> IDBVersionChangeEvent = "webapi_IDBVersionChangeEvent" "new"

#cfg(target="wasm-gc")
fn idb_version_change_event_old_version_ffi(obj: JsValue) -> UInt64 = "webapi_IDBVersionChangeEvent" "get_oldVersion"

#cfg(target="wasm-gc")
fn idb_version_change_event_new_version_ffi(obj: JsValue) -> UInt64 = "webapi_IDBVersionChangeEvent" "get_newVersion"